variable "pages_projects" {
  description = <<EOT
Map of pages_projects, attributes below
Required:
    - account_id
    - name
    - production_branch
Optional:
    - build_config
    - deployment_configs
    - source
EOT

  type = map(object({
    account_id        = string
    name              = string
    production_branch = string
    build_config = optional(object({
      build_caching       = optional(bool)
      build_command       = optional(string)
      destination_dir     = optional(string)
      root_dir            = optional(string)
      web_analytics_tag   = optional(string)
      web_analytics_token = optional(string)
    }))
    deployment_configs = optional(object({
      preview = optional(object({
        ai_bindings = optional(map(object({
          project_id = string
        })))
        always_use_latest_compatibility_date = optional(bool)
        analytics_engine_datasets = optional(map(object({
          dataset = string
        })))
        browsers = optional(map(object({
        })))
        build_image_major_version = optional(number)
        compatibility_date        = optional(string)
        compatibility_flags       = optional(list(string))
        d1_databases = optional(map(object({
          id = string
        })))
        durable_object_namespaces = optional(map(object({
          namespace_id = string
        })))
        env_vars = optional(map(object({
          type  = string
          value = string
        })))
        fail_open = optional(bool)
        hyperdrive_bindings = optional(map(object({
          id = string
        })))
        kv_namespaces = optional(map(object({
          namespace_id = string
        })))
        limits = optional(object({
          cpu_ms = number
        }))
        mtls_certificates = optional(map(object({
          certificate_id = string
        })))
        placement = optional(object({
          mode = optional(string)
        }))
        queue_producers = optional(map(object({
          name = string
        })))
        r2_buckets = optional(map(object({
          jurisdiction = optional(string)
          name         = string
        })))
        services = optional(map(object({
          entrypoint  = optional(string)
          environment = optional(string)
          service     = string
        })))
        usage_model = optional(string)
        vectorize_bindings = optional(map(object({
          index_name = string
        })))
        wrangler_config_hash = optional(string)
      }))
      production = optional(object({
        ai_bindings = optional(map(object({
          project_id = string
        })))
        always_use_latest_compatibility_date = optional(bool)
        analytics_engine_datasets = optional(map(object({
          dataset = string
        })))
        browsers = optional(map(object({
        })))
        build_image_major_version = optional(number)
        compatibility_date        = optional(string)
        compatibility_flags       = optional(list(string))
        d1_databases = optional(map(object({
          id = string
        })))
        durable_object_namespaces = optional(map(object({
          namespace_id = string
        })))
        env_vars = optional(map(object({
          type  = string
          value = string
        })))
        fail_open = optional(bool)
        hyperdrive_bindings = optional(map(object({
          id = string
        })))
        kv_namespaces = optional(map(object({
          namespace_id = string
        })))
        limits = optional(object({
          cpu_ms = number
        }))
        mtls_certificates = optional(map(object({
          certificate_id = string
        })))
        placement = optional(object({
          mode = optional(string)
        }))
        queue_producers = optional(map(object({
          name = string
        })))
        r2_buckets = optional(map(object({
          jurisdiction = optional(string)
          name         = string
        })))
        services = optional(map(object({
          entrypoint  = optional(string)
          environment = optional(string)
          service     = string
        })))
        usage_model = optional(string)
        vectorize_bindings = optional(map(object({
          index_name = string
        })))
        wrangler_config_hash = optional(string)
      }))
    }))
    source = optional(object({
      config = object({
        deployments_enabled            = optional(bool)
        owner                          = optional(string)
        owner_id                       = optional(string)
        path_excludes                  = optional(list(string))
        path_includes                  = optional(list(string))
        pr_comments_enabled            = optional(bool)
        preview_branch_excludes        = optional(list(string))
        preview_branch_includes        = optional(list(string))
        preview_deployment_setting     = optional(string)
        production_branch              = optional(string)
        production_deployments_enabled = optional(bool)
        repo_id                        = optional(string)
        repo_name                      = optional(string)
      })
      type = string
    }))
  }))
}

