{application, earthengine,
 [
  {description, "Earthengine Media Stream Server"},
  {vsn, "0.0.1"},
  {id, "earthengine"},
  {modules, [
    engine
 	]},
  {registered,   []},
  {applications, [kernel, stdlib]},
  {mod, {ems_app, []}},
  {env, [
	{rtmp_port, 1935},
	{rtsp_port, 554},
	{applications, [apps_streaming, apps_recording, apps_shared_objects, apps_push, apps_rtmp]},
	{http_port, 2990}
	]}
 ]
}.


