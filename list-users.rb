#!/usr/bin/env ruby

# Set OCTOKIT_ACCESS_TOKEN to authenticate

require "octokit"

Octokit.auto_paginate = true
members = Octokit.org_members "ministryofjustice"

require "csv"

CSV.open("export-all.csv", "wb") do |csv|
  members.each do |m|
    user = Octokit.user m[:login]
    csv << [m[:id], m[:login], user.name, user.email]
  end
end
