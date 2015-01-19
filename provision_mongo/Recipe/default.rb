chef::Log.info("starting")
include_recipe "mongodb::default"
chef::Log.info("Installing mogno time")
mongodb_instance "mongodb" do
  port node['application']['port']
end
