{
  services.nginx = {
    enable = true;

    recommendedProxySettings = true;
    recommendedTlsSettings = true;

    virtualHosts = {
      "attic.toneriko.top" = {
        enableACME = true;
        forceSSL = true;

        locations."/" = {
          proxyPass = "http://127.0.0.1:8080";

          extraConfig = ''
            client_max_body_size 0;

            proxy_request_buffering off;
            proxy_buffering off;

            proxy_http_version 1.1;

            proxy_read_timeout 1h;
            proxy_send_timeout 1h;
          '';
        };
      };
    };
  };

  networking.firewall.allowedTCPPorts = [
    80
    443
  ];

  security.acme = {
    acceptTerms = true;
    defaults.email = "anh.ngo@h2corporation.jp";
  };
}
