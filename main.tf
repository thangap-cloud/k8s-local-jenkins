
resource "kind_cluster" "default" {
  name = "cluster-1"
  wait_for_ready = true
  kind_config {
    kind = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role = "control-plane"
      extra_port_mappings {
        container_port = 30911
        host_port = 30911
        listen_address = "127.0.0.1"
        protocol = "TCP"
      }
    }

    node {
      role = "worker"
      image = "kindest/node:v1.23.4"
    }
  }
}
resource "helm_release" "jenkins" {
  name       = "jenkins"
  repository = "https://charts.jenkins.io"
  chart      = "jenkins"
  #version    = "4.1.8"
  namespace  = "jenkins"
  timeout    = 200
  values = [
    file("values.yaml"),
  ]

  set {
    name  = "controller.adminUser"
    value = "admin"
  }

  set {
    name  = "controller.adminPassword"
    value = "password"
  }


  depends_on = [
    kubernetes_namespace.jenkins,
  ]
}

resource "kubernetes_namespace" "jenkins" {
  metadata {
    name = "jenkins"

    labels = {
      name        = "jenkins"
      description = "jenkins"
    }
  }
}

resource "helm_release" "hello-world" {
  name       = "hello-world"
  repository = path.module
  chart      = "hello-world"
  namespace  = "app"
  create_namespace = true
}