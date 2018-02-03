class nginx::service (
  String $ensure       = $::nginx::config_ensure,
  String $service_name = $::nginx::service_name,
  String $pattern      = $::nginx::service_pattern,
  Bolean $enable       = $::nginx::service_enable,
  Bolean $hasstatus    = $::nginx::service_hasstatus,
  Bolean $hasrestart   = $::nginx::service_hasrestart,
) {
  service { ' nginx_service':
    ensure     => $ensure,
    name       => $service_name,
    enable     => $enable,
    hasstatus  => $hasstatus,
    hasrestart => $hasrestart,
    pattern    => $pattern,
  }
}
