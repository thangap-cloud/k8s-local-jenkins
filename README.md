# Jenkins with KIND

This projects help to you deploy a jenkins on kind cluster, create a pipeline for CI and Deploy the application in the same KIND cluster with helm using TF

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.2.0 |
| <a name="requirement_kind"></a> [kind](#requirement\_kind) | 0.0.12 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.2.0 |
| <a name="provider_kind"></a> [kind](#provider\_kind) | 0.0.12 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.25.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.hello-world](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.jenkins](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kind_cluster.default](https://registry.terraform.io/providers/tehcyx/kind/0.0.12/docs/resources/cluster) | resource |
| [kubernetes_namespace.jenkins](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |

## Inputs

No inputs.

## Outputs

No outputs.
