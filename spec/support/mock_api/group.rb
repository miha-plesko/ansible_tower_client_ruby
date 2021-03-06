module AnsibleTowerClient
  class MockApi
    module Group
      def self.collection
        [
          {
            "id"                          => 9,
            "type"                        => "group",
            "url"                         => "/api/v1/groups/9/",
            "related"                     => {
              "job_host_summaries" => "/api/v1/groups/9/job_host_summaries/",
              "variable_data"      => "/api/v1/groups/9/variable_data/",
              "job_events"         => "/api/v1/groups/9/job_events/",
              "potential_children" => "/api/v1/groups/9/potential_children/",
              "ad_hoc_commands"    => "/api/v1/groups/9/ad_hoc_commands/",
              "all_hosts"          => "/api/v1/groups/9/all_hosts/",
              "activity_stream"    => "/api/v1/groups/9/activity_stream/",
              "hosts"              => "/api/v1/groups/9/hosts/",
              "children"           => "/api/v1/groups/9/children/",
              "inventory_sources"  => "/api/v1/groups/9/inventory_sources/",
              "inventory"          => "/api/v1/inventories/2/",
              "inventory_source"   => "/api/v1/inventory_sources/14/"
            },
            "summary_fields"              => {
              "inventory"        => {
                "id"                              => 2,
                "name"                            => "Dev-VC60",
                "description"                     => "",
                "has_active_failures"             => true,
                "total_hosts"                     => 81,
                "hosts_with_active_failures"      => 1,
                "total_groups"                    => 24,
                "groups_with_active_failures"     => 10,
                "has_inventory_sources"           => true,
                "total_inventory_sources"         => 2,
                "inventory_sources_with_failures" => 2
              },
              "inventory_source" => {
                "source" => "",
                "status" => "ok"
              }
            },
            "created"                     => "2016-08-31T16:59:39.628Z",
            "modified"                    => "2017-03-02T04:14:05.306Z",
            "name"                        => "centos64Guest",
            "description"                 => "imported",
            "inventory"                   => 2,
            "variables"                   => "{}",
            "has_active_failures"         => false,
            "total_hosts"                 => 21,
            "hosts_with_active_failures"  => 0,
            "total_groups"                => 1,
            "groups_with_active_failures" => 0,
            "has_inventory_sources"       => true
          }
        ]
      end

      def self.response
        {
          "count"    => collection.length,
          "next"     => nil,
          "previous" => nil,
          "results"  => collection
        }.to_json
      end
    end
  end
end
