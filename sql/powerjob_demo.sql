INSERT INTO `pj_app_info` (`id`, `app_name`, `current_server`, `gmt_create`, `gmt_modified`, `password`) VALUES (1, 'ruoyi-worker', '192.168.31.80:10010', '2023-06-13 16:32:59.263000', '2023-06-13 16:33:29.898000', '123456');
INSERT INTO `pj_job_info` (`id`, `alarm_config`, `app_id`, `concurrency`, `designated_workers`, `dispatch_strategy`, `execute_type`, `extra`, `gmt_create`, `gmt_modified`, `instance_retry_num`, `instance_time_limit`, `job_description`, `job_name`, `job_params`, `lifecycle`, `log_config`, `max_instance_num`, `max_worker_count`, `min_cpu_cores`, `min_disk_space`, `min_memory_space`, `next_trigger_time`, `notify_user_ids`, `processor_info`, `processor_type`, `status`, `tag`, `task_retry_num`, `time_expression`, `time_expression_type`) VALUES (1, '{\"alertThreshold\":0,\"silenceWindowLen\":0,\"statisticWindowLen\":0}', 1, 5, '', 2, 1, NULL, '2023-06-02 15:01:27.717000', '2023-06-02 16:03:19.462000', 1, 0, '', '单机处理器执行测试', NULL, '{}', '{\"type\":1}', 0, 0, 0, 0, 0, NULL, NULL, 'org.dromara.job.processors.StandaloneProcessorDemo', 1, 1, NULL, 1, '30000', 3);
INSERT INTO `pj_job_info` (`id`, `alarm_config`, `app_id`, `concurrency`, `designated_workers`, `dispatch_strategy`, `execute_type`, `extra`, `gmt_create`, `gmt_modified`, `instance_retry_num`, `instance_time_limit`, `job_description`, `job_name`, `job_params`, `lifecycle`, `log_config`, `max_instance_num`, `max_worker_count`, `min_cpu_cores`, `min_disk_space`, `min_memory_space`, `next_trigger_time`, `notify_user_ids`, `processor_info`, `processor_type`, `status`, `tag`, `task_retry_num`, `time_expression`, `time_expression_type`) VALUES (2, '{\"alertThreshold\":0,\"silenceWindowLen\":0,\"statisticWindowLen\":0}', 1, 5, '', 1, 2, NULL, '2023-06-02 15:04:45.342000', '2023-06-02 16:04:09.736000', 0, 0, NULL, '广播处理器测试', NULL, '{}', '{\"type\":1}', 0, 0, 0, 0, 0, NULL, NULL, 'org.dromara.job.processors.BroadcastProcessorDemo', 1, 1, NULL, 1, '30000', 3);
INSERT INTO `pj_job_info` (`id`, `alarm_config`, `app_id`, `concurrency`, `designated_workers`, `dispatch_strategy`, `execute_type`, `extra`, `gmt_create`, `gmt_modified`, `instance_retry_num`, `instance_time_limit`, `job_description`, `job_name`, `job_params`, `lifecycle`, `log_config`, `max_instance_num`, `max_worker_count`, `min_cpu_cores`, `min_disk_space`, `min_memory_space`, `next_trigger_time`, `notify_user_ids`, `processor_info`, `processor_type`, `status`, `tag`, `task_retry_num`, `time_expression`, `time_expression_type`) VALUES (3, '{\"alertThreshold\":0,\"silenceWindowLen\":0,\"statisticWindowLen\":0}', 1, 5, '', 1, 4, NULL, '2023-06-02 15:13:23.519000', '2023-06-02 16:03:22.421000', 0, 0, NULL, 'Map处理器测试', NULL, '{}', '{\"type\":1}', 0, 0, 0, 0, 0, NULL, NULL, 'org.dromara.job.processors.MapProcessorDemo', 1, 2, NULL, 1, '1000', 3);
INSERT INTO `pj_job_info` (`id`, `alarm_config`, `app_id`, `concurrency`, `designated_workers`, `dispatch_strategy`, `execute_type`, `extra`, `gmt_create`, `gmt_modified`, `instance_retry_num`, `instance_time_limit`, `job_description`, `job_name`, `job_params`, `lifecycle`, `log_config`, `max_instance_num`, `max_worker_count`, `min_cpu_cores`, `min_disk_space`, `min_memory_space`, `next_trigger_time`, `notify_user_ids`, `processor_info`, `processor_type`, `status`, `tag`, `task_retry_num`, `time_expression`, `time_expression_type`) VALUES (4, '{\"alertThreshold\":0,\"silenceWindowLen\":0,\"statisticWindowLen\":0}', 1, 5, '', 1, 3, NULL, '2023-06-02 15:45:25.896000', '2023-06-02 16:03:23.125000', 0, 0, NULL, 'MapReduce处理器测试', NULL, '{}', '{\"type\":1}', 0, 0, 0, 0, 0, NULL, NULL, 'org.dromara.job.processors.MapReduceProcessorDemo', 1, 2, NULL, 1, '1000', 3);
