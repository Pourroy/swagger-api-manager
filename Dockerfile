FROM locawebci/ea-op-ful-cloud-ruby-builder:3.0.3-latest AS Builder
FROM locawebci/ea-op-ful-cloud-ruby-final:3.0.3-latest

COPY --from=Builder /etc/alpine-release /tmp/dummy

USER app

EXPOSE 3000
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]