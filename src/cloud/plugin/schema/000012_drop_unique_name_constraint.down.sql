ALTER TABLE plugin_retention_scripts ADD CONSTRAINT plugin_retention_scripts_org_id_script_name_key UNIQUE (org_id, script_name);
