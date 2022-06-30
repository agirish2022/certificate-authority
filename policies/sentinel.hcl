module "tfplan-functions" {
    source = "../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "../sentinel-mocks/mock-tfplan-v2.sentinel"
  }
}

mock "tfstate/v2" {
  module {
    source = "/home/gavula/certificate-authority-service-updated2/mock-post-apply/mock-tfstate-v2-modified.sentinel"
  }
}

policy "privateca_ca_pool_policy" {
    source = "./privateca_ca_pool_policy.sentinel"
    enforcement_level = "hard-mandatory"
}

policy "privateca_certificate_authority_policy" {
    source = "./privateca_certificate_authority_policy.sentinel"
    enforcement_level = "hard-mandatory"
}