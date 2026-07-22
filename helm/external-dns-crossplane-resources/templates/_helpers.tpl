{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Name of the crossplane resource for external-dns.
*/}}
{{- define "resourceName" -}}
{{ .Values.clusterName }}-{{ .Values.serviceAccount.name }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "labels.selector" -}}
app.kubernetes.io/name: {{ include "name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "labels.common" -}}
{{ include "labels.selector" . }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
application.giantswarm.io/team: {{ index .Chart.Annotations "io.giantswarm.application.team" | quote }}
giantswarm.io/managed-by: {{ .Release.Name | quote }}
giantswarm.io/cluster: {{ .Values.clusterName | quote }}
helm.sh/chart: {{ include "chart" . | quote }}
{{- end -}}

{{/*
AWS partition, required to be set by aws-crossplane-cluster-config-operator.
Prefers the scoped `aws.awsPartition`, falling back to the legacy root value.
*/}}
{{- define "awsPartition" -}}
{{- required "awsPartition from aws-crossplane-cluster-config-operator is not filled yet" (.Values.aws.awsPartition | default .Values.awsPartition) -}}
{{- end -}}

{{/*
AWS account ID, required to be set by aws-crossplane-cluster-config-operator.
Prefers the scoped `aws.accountID`, falling back to the legacy root value.
*/}}
{{- define "accountID" -}}
{{- required "accountID from aws-crossplane-cluster-config-operator is not filled yet" (.Values.aws.accountID | default .Values.accountID) -}}
{{- end -}}

{{/*
Get list of all provided OIDC domains.
Prefers the scoped `aws.oidcDomain`/`aws.oidcDomains`, falling back to the legacy root values.
*/}}
{{- define "oidcDomains" -}}
{{- $oidcDomain := .Values.aws.oidcDomain | default .Values.oidcDomain -}}
{{- $oidcDomainsList := .Values.aws.oidcDomains | default .Values.oidcDomains -}}
{{- $oidcDomains := list $oidcDomain -}}
{{- if $oidcDomainsList -}}
{{- $oidcDomains = concat $oidcDomains $oidcDomainsList -}}
{{- end -}}
{{- compact $oidcDomains | uniq | toJson -}}
{{- end -}}

{{/*
Determine the resource group name to use.
*/}}
{{- define "azure.resourceGroupName" -}}
{{ .Values.azure.resourceGroupName | default .Values.clusterName }}
{{- end -}}
