INSERT INTO `institutions` (
       `id`,            `full_name`,  `nickname`, `desc`,           `contact_info`,
       `contact_email`, `url`,        `url_text`, `shib_entity_id`, `shib_domain`,
       `created_at`,    `updated_at`, `logo`,     `ancestry`,       `deleted_at`)
values ('1', 'Test Institution', 'Testy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),     
       ('3', '- sub test institution 1', '- sub test institution 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
       ('30', 'Test sub-inst01', 'Testy-Sub', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);



INSERT INTO `users` (
       `id`, `institution_id`, `email`,                  `first_name`, `last_name`,
       `token`,          `token_expiration`,       `prefs`,      `created_at`,
       `updated_at`,     `login_id`,               `active`,     `deleted_at`)
VALUES        
       (1, 1, 'admin123@gmail.com', 'Admin', '123', NULL, NULL, X'2D2D2D0A3A75736572733A0A20203A726F6C655F6772616E7465643A20747275650A3A646D705F6F776E6572735F616E645F636F3A0A20203A6E65775F636F6D6D656E743A20747275650A20203A636F6D6D697465643A20747275650A20203A7075626C69736865643A20747275650A20203A7375626D69747465643A20747275650A3A646D705F636F3A0A20203A7375626D69747465643A2066616C73650A20203A64656163746976617465643A2066616C73650A20203A64656C657465643A2066616C73650A20203A6E65775F636F5F6F776E65723A2066616C73650A3A726571756972656D656E745F656469746F72733A0A20203A636F6D6D697465643A20747275650A20203A6465616374697665643A20747275650A20203A64656C657465643A20747275650A3A7265736F757263655F656469746F72733A0A20203A636F6D6D697465643A20747275650A20203A6465616374697665643A20747275650A20203A64656C657465643A20747275650A20203A6173736F6369617465645F636F6D6D697465643A20747275650A3A696E737469747574696F6E616C5F7265766965776572733A0A20203A7375626D69747465643A20747275650A20203A6E65775F636F6D6D656E743A20747275650A20203A617070726F7665645F72656A65637465643A20747275650A',
       '2013-11-01 23:46:01', '2013-12-11 20:40:29', 'admin123', 1, NULL),
       (2, 1, 'resource123@gmail.com', 'Resource', '123', NULL, NULL, X'2D2D2D0A3A75736572733A0A20203A726F6C655F6772616E7465643A20747275650A3A646D705F6F776E6572735F616E645F636F3A0A20203A6E65775F636F6D6D656E743A20747275650A20203A636F6D6D697465643A20747275650A20203A7075626C69736865643A20747275650A20203A7375626D69747465643A20747275650A3A646D705F636F3A0A20203A7375626D69747465643A20747275650A20203A64656163746976617465643A20747275650A20203A64656C657465643A20747275650A20203A6E65775F636F5F6F776E65723A20747275650A3A726571756972656D656E745F656469746F72733A0A20203A636F6D6D697465643A20747275650A20203A6465616374697665643A20747275650A20203A64656C657465643A20747275650A3A7265736F757263655F656469746F72733A0A20203A636F6D6D697465643A20747275650A20203A6465616374697665643A20747275650A20203A64656C657465643A20747275650A20203A6173736F6369617465645F636F6D6D697465643A20747275650A3A696E737469747574696F6E616C5F7265766965776572733A0A20203A7375626D69747465643A20747275650A20203A6E65775F636F6D6D656E743A20747275650A20203A617070726F7665645F72656A65637465643A20747275650A',
       '2013-11-01 23:46:51', '2013-12-20 21:32:03', 'resource123', 1, NULL),
       (3, 1, 'require123@gmail.com', 'Require123', '123', NULL, NULL, X'2D2D2D0A3A75736572733A0A20203A726F6C655F6772616E7465643A20747275650A3A646D705F6F776E6572735F616E645F636F3A0A20203A6E65775F636F6D6D656E743A20747275650A20203A636F6D6D697465643A20747275650A20203A7075626C69736865643A20747275650A20203A7375626D69747465643A20747275650A3A646D705F636F3A0A20203A7375626D69747465643A20747275650A20203A64656163746976617465643A20747275650A20203A64656C657465643A20747275650A20203A6E65775F636F5F6F776E65723A20747275650A3A726571756972656D656E745F656469746F72733A0A20203A636F6D6D697465643A20747275650A20203A6465616374697665643A20747275650A20203A64656C657465643A20747275650A3A7265736F757263655F656469746F72733A0A20203A636F6D6D697465643A20747275650A20203A6465616374697665643A20747275650A20203A64656C657465643A20747275650A20203A6173736F6369617465645F636F6D6D697465643A20747275650A3A696E737469747574696F6E616C5F7265766965776572733A0A20203A7375626D69747465643A20747275650A20203A6E65775F636F6D6D656E743A20747275650A20203A617070726F7665645F72656A65637465643A20747275650A',
       '2013-11-01 23:47:12', '2013-11-05 17:33:48', 'require123', 1, NULL),
       (4, 1, 'instrev123@gmail.com', 'Instrev123', '123', NULL, NULL, X'2D2D2D0A3A75736572733A0A20203A726F6C655F6772616E7465643A20747275650A3A646D705F6F776E6572735F616E645F636F3A0A20203A6E65775F636F6D6D656E743A20747275650A20203A636F6D6D697465643A20747275650A20203A7075626C69736865643A20747275650A20203A7375626D69747465643A20747275650A3A646D705F636F3A0A20203A7375626D69747465643A20747275650A20203A64656163746976617465643A20747275650A20203A64656C657465643A20747275650A20203A6E65775F636F5F6F776E65723A20747275650A3A726571756972656D656E745F656469746F72733A0A20203A636F6D6D697465643A20747275650A20203A6465616374697665643A20747275650A20203A64656C657465643A20747275650A3A7265736F757263655F656469746F72733A0A20203A636F6D6D697465643A20747275650A20203A6465616374697665643A20747275650A20203A64656C657465643A20747275650A20203A6173736F6369617465645F636F6D6D697465643A20747275650A3A696E737469747574696F6E616C5F7265766965776572733A0A20203A7375626D69747465643A20747275650A20203A6E65775F636F6D6D656E743A20747275650A20203A617070726F7665645F72656A65637465643A20747275650A',
       '2013-11-01 23:47:37', '2013-11-05 15:20:10', 'instrev123', 1, NULL),
       (5, 1, 'instadmin123@gmail.com', 'Instadmin123', '123', NULL, NULL, X'2D2D2D0A3A75736572733A0A20203A726F6C655F6772616E7465643A2066616C73650A3A646D705F6F776E6572735F616E645F636F3A0A20203A6E65775F636F6D6D656E743A2066616C73650A20203A636F6D6D697465643A20747275650A20203A7075626C69736865643A2066616C73650A20203A7375626D69747465643A20747275650A3A646D705F636F3A0A20203A7375626D69747465643A2066616C73650A20203A64656163746976617465643A2066616C73650A20203A64656C657465643A2066616C73650A20203A6E65775F636F5F6F776E65723A2066616C73650A3A726571756972656D656E745F656469746F72733A0A20203A636F6D6D697465643A20747275650A20203A6465616374697665643A20747275650A20203A64656C657465643A20747275650A3A7265736F757263655F656469746F72733A0A20203A636F6D6D697465643A20747275650A20203A6465616374697665643A20747275650A20203A64656C657465643A20747275650A20203A6173736F6369617465645F636F6D6D697465643A20747275650A3A696E737469747574696F6E616C5F7265766965776572733A0A20203A7375626D69747465643A20747275650A20203A6E65775F636F6D6D656E743A20747275650A20203A617070726F7665645F72656A65637465643A20747275650A',
       '2013-11-01 23:48:06', '2014-01-07 22:21:56', 'instadmin123', 1, NULL),
       (14, 1, 'test_user2@gmail.com', 'test_user2', 'test_user2', NULL, NULL, X'2D2D2D0A3A75736572733A0A20203A726F6C655F6772616E7465643A2066616C73650A3A646D705F6F776E6572735F616E645F636F3A0A20203A6E65775F636F6D6D656E743A2066616C73650A20203A636F6D6D697465643A20747275650A20203A7075626C69736865643A2066616C73650A20203A7375626D69747465643A20747275650A3A646D705F636F3A0A20203A7375626D69747465643A2066616C73650A20203A64656163746976617465643A2066616C73650A20203A64656C657465643A2066616C73650A20203A6E65775F636F5F6F776E65723A2066616C73650A3A726571756972656D656E745F656469746F72733A0A20203A636F6D6D697465643A20747275650A20203A6465616374697665643A20747275650A20203A64656C657465643A20747275650A3A7265736F757263655F656469746F72733A0A20203A636F6D6D697465643A20747275650A20203A6465616374697665643A20747275650A20203A64656C657465643A20747275650A20203A6173736F6369617465645F636F6D6D697465643A20747275650A3A696E737469747574696F6E616C5F7265766965776572733A0A20203A7375626D69747465643A20747275650A20203A6E65775F636F6D6D656E743A20747275650A20203A617070726F7665645F72656A65637465643A20747275650A',
       '2013-11-01 23:48:06', '2014-01-07 22:21:56', 'test_user2', 1, NULL),
				(15, 3, 'testsub_01@gmail.com', 'testsub', '01', NULL, NULL, X'2D2D2D0A3A75736572733A0A20203A726F6C655F6772616E7465643A20747275650A3A646D705F6F776E6572735F616E645F636F3A0A20203A6E65775F636F6D6D656E743A20747275650A20203A636F6D6D697465643A20747275650A20203A7075626C69736865643A20747275650A20203A7375626D69747465643A20747275650A3A646D705F636F3A0A20203A7375626D69747465643A2066616C73650A20203A64656163746976617465643A2066616C73650A20203A64656C657465643A2066616C73650A20203A6E65775F636F5F6F776E65723A2066616C73650A3A726571756972656D656E745F656469746F72733A0A20203A636F6D6D697465643A20747275650A20203A6465616374697665643A20747275650A20203A64656C657465643A20747275650A3A7265736F757263655F656469746F72733A0A20203A636F6D6D697465643A20747275650A20203A6465616374697665643A20747275650A20203A64656C657465643A20747275650A20203A6173736F6369617465645F636F6D6D697465643A20747275650A3A696E737469747574696F6E616C5F7265766965776572733A0A20203A7375626D69747465643A20747275650A20203A6E65775F636F6D6D656E743A20747275650A20203A617070726F7665645F72656A65637465643A20747275650A',
       '2013-11-01 23:46:01', '2013-12-11 20:40:29', 'testsub_01', 1, NULL);



INSERT INTO `roles` (
       `id`, `name`, `created_at`, `updated_at`)
VALUES 
		(1, 'DMP Administrator', '2013-11-01 23:46:01', '2013-12-11 20:40:29'),
		(2, 'Resources Editor', '2013-11-01 23:46:01', '2013-12-11 20:40:29'),
		(3, 'Template Editor', '2013-11-01 23:46:01', '2013-12-11 20:40:29'),
		(4, 'Institutional Reviewer', '2013-11-01 23:46:01', '2013-12-11 20:40:29'),
		(5, 'Institutional Administrator', '2013-11-01 23:46:01', '2013-12-11 20:40:29');



INSERT INTO `authorizations` (
       `id`, `role_id`, `user_id`, `created_at`, `updated_at`)
VALUES 
		(1, 1, 1, '2013-11-01 23:46:01', '2013-12-11 20:40:29'),
		(2, 2, 2, '2013-11-01 23:46:01', '2013-12-11 20:40:29'),
		(3, 3, 3, '2013-11-01 23:46:01', '2013-12-11 20:40:29'),
		(4, 4, 4, '2013-11-01 23:46:01', '2013-12-11 20:40:29'),
		(5, 5, 5, '2013-11-01 23:46:01', '2013-12-11 20:40:29'),
		(6, 3, 15, '2013-11-01 23:46:01', '2013-12-11 20:40:29');


INSERT INTO `requirements_templates` (
       `id`,         `institution_id`, `name`,        `active`,     `start_date`,
       `end_date`,   `visibility`,     `review_type`, `created_at`, `updated_at`)
VALUES 	(46,  1,  'top_level_test_inst_template',  1,     '2011-08-01', NULL,   'institutional',         
				'no_review',   '2011-08-01 14:33:12', '2014-03-20 19:49:40'),

				(2,  3,  'template_to_copy',  1,     '2011-08-01', NULL,   'public',         
					'no_review',   '2011-08-01 14:33:12', '2014-03-20 19:49:40'),

				(47,  1,  'template_47',  1,     '2011-08-01', NULL,   'public',         
					'no_review',   '2011-08-01 14:33:12', '2014-03-20 19:49:40'),

				(10,  3,  'template_10',  1,     '2011-08-01', NULL,   'public',         
					'no_review',   '2011-08-01 14:33:12', '2014-03-20 19:49:40');



INSERT INTO `requirements` (`id`,
       `position`,                 `text_brief`,
       `text_full`,     `requirement_type`,         `obligation`,
       `default`,       `requirements_template_id`, `created_at`,
       `updated_at`,    `ancestry`,                 `group`)
VALUES (1, 1,  'Policies for re-use, redistribution', 'Policies for re-use, redistribution', 'text', 'optional',
        NULL, 2,   '2011-08-01 14:42:55',
       '2014-04-02 17:30:57', NULL, NULL),

				(4, 1,  'etaoin shrdlu', 'etaoin shrdlu', 'text', 'optional',
        NULL, 47,   '2011-08-01 14:42:55',
       '2014-04-02 17:30:57', NULL, NULL),

				(11, 1,  'requirements_for_10', 'requirements_for_10', 'text', 'optional',
        NULL, 10,   '2011-08-01 14:42:55',
       '2014-04-02 17:30:57', NULL, NULL);



INSERT INTO `plans` (
       `id`,                      `name`,                `requirements_template_id`,
       `solicitation_identifier`, `submission_deadline`, `visibility`,
       `created_at`,              `updated_at`,          `current_plan_state_id`)
VALUES (1,  'top_level_plan_my_dog_has_fleas', 46,
       '',          NULL,                 'public',
       '2011-08-01 14:33:12',  '2014-03-20 19:49:40',  1);


INSERT INTO `plan_states` ( `id`,
       `plan_id`, `state`, `user_id`, `created_at`, `updated_at`)
VALUES (1, 1, 'new',   14, '2013-11-01 23:46:51', '2013-12-20 21:32:03'),
				(2, 2, 'new',   15, '2013-11-01 23:46:51', '2013-12-20 21:32:03');



INSERT INTO `user_plans` (
       `id`, `user_id`, `plan_id`, `owner`, `created_at`, `updated_at`)
VALUES (1, '14', '1',  1,  '2011-08-01 14:33:12', '2014-03-20 19:49:40'),
				(2, '15', '2',  1,  '2011-08-01 14:33:12', '2014-03-20 19:49:40');







