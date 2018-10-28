local DbOption = require('Options.DbOption')

return
{
	tacviewDataRecordingEnabled			= DbOption.new():setValue(true):checkbox(),

	tacviewRecordClientsSessionsEnabled	= DbOption.new():setValue(false):checkbox(),

	tacviewBookmarkShortcut				= DbOption.new():setValue(0):combo({
											DbOption.Item(_('RAlt + B')):Value(0),
											}),

	tacviewPlaybackDelay				= DbOption.new():setValue(10*60):combo({
											DbOption.Item(_('None (real-time)')):Value(0),
											DbOption.Item(_('5 minutes')):Value(5*60),
											DbOption.Item(_('10 minutes')):Value(10*60),
											DbOption.Item(_('20 minutes')):Value(20*60),
											DbOption.Item(_('30 minutes')):Value(30*60),
											}),

	tacviewCompressionLevel				= DbOption.new():setValue(1):combo({
											DbOption.Item(_('not compressed')):Value(0),
											DbOption.Item(_('zip')):Value(1),
											}),

	tacviewProfilingPeriod				= DbOption.new():setValue(10*60):combo({
											DbOption.Item(_('1 minute')):Value(1*60),
											DbOption.Item(_('10 minutes')):Value(10*60),
											}),

	tacviewDebugModeEnabled				= DbOption.new():setValue(false):checkbox(),

	tacviewRealTimeTelemetryPort		= DbOption.new():setValue('42674'):editbox(),
	tacviewRemoteControlPort			= DbOption.new():setValue('42675'):editbox(),

	tacviewHostTelemetryPassword		= DbOption.new():setValue(''):editbox(),
	tacviewClientTelemetryPassword		= DbOption.new():setValue(''):editbox(),

	tacviewRemoteControlPassword		= DbOption.new():setValue(''):editbox(),

	tacviewTerrainExport				= DbOption.new():setValue(0):combo({
											DbOption.Item(_('Disabled')):Value(0),
											DbOption.Item(_('Unknown Terrain')):Value(1),
											DbOption.Item(_('Predefined Terrain')):Value(2),
											}),
}
