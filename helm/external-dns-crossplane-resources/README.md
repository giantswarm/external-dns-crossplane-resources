# external-dns-crossplane-resources

Crossplane resources for external-dns DNS access on CAPA (Route53) and CAPZ (Workload Identity) clusters

**Homepage:** <https://github.com/giantswarm/external-dns-crossplane-resources>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| provider | string | `"aws"` |  |
| clusterName | string | `""` |  |
| serviceAccount.name | string | `"external-dns"` |  |
| serviceAccount.namespace | string | `"kube-system"` |  |
| aws.accountID | string | `""` |  |
| aws.awsPartition | string | `""` |  |
| aws.oidcDomain | string | `""` |  |
| aws.oidcDomains | list | `[]` |  |
| aws.managedDomain | string | `""` |  |
| accountID | string | `""` |  |
| awsPartition | string | `""` |  |
| oidcDomain | string | `""` |  |
| oidcDomains | list | `[]` |  |
| awsRegion | string | `""` |  |
| region | string | `""` |  |
| awsCluster | object | `{}` |  |
| azure.location | string | `""` |  |
| azure.resourceGroupName | string | `""` |  |
| azure.subscriptionID | string | `""` |  |
| azure.mountPath | string | `"/etc/kubernetes"` |  |
