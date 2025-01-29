provider "azurerm" {
    version = "4.15.0"   
    subscription_id="2c454da0-5e21-41e1-9534-3e966c7cd240"
    features {}
}
provider "tls"{
    version = "4.0.6"
}

provider "kubernetes" {
    host = azurerm_kubernetes_cluster.cluster.kube_config[0].host

    client_certificate = base64decode(azurerm_kubernetes_cluster.cluster.kube_config[0].client_certificate)
    client_key             = base64decode(azurerm_kubernetes_cluster.cluster.kube_config[0].client_key)
    cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.cluster.kube_config[0].cluster_ca_certificate)
}

provider "null"{
    version = "3.2.3"
}

