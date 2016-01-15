# A campaign is a grouping of ad sets which are organized by the same business
# objective. Each campaign has an objective that must be valid across the ad
# sets within that campaign.
#
# Usage:
# Zuck::Campaign.all
# Zuck::Campaign.find('6036226676095')
# Zuck::Campaign.find('6036226676095').ad_account
# Zuck::Campaign.find('6036226676095').ad_sets
# Zuck::Campaign.find('6036226676095').ads

module Zuck
  class Campaign < RawFbObject

    # Known keys as per
    # [fb docs](https://developers.facebook.com/docs/marketing-api/reference/ad-campaign-group)
    known_keys :id,
               :adlabels,
               :account_id,
               :buying_type,
               :can_use_spend_cap,
               :configured_status,
               :created_time,
               :effective_status,
               :name,
               :objective,
               :start_time,
               :stop_time,
               :updated_time,
               :spend_cap

    list_path :campaigns

    parent_object :ad_account, as: :account_id

    connections :ad_sets, :ads

  end
end
