gulp = require 'gulp'
plugins = prop.plugins
config = prop.config
parentPath = plugins.path.resolve("")

# BrowserSync
module.exports = do ->

	# BrowserSyncの設定
	gulp.task 'browser-sync', ->
		plugins.browserSync.init
			server:
				# ルートを指定します
				baseDir: config.paths.pub
			# gulp起動時に開くページを指定します
			startPath: config.server.startPath
			# ポートを指定します（デフォルトは3000）
			port: config.server.port
			# External IPでブラウザを開けます（スマホで確認する時に重宝）
			open: config.server.open

	# リロード
	gulp.task 'reload', ->
		plugins.browserSync.reload()
