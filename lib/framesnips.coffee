module.exports =
    activate: ->
        #    Nav
        atom.workspaceView.command "bs:nav", => @bs_nav_default()

        atom.workspaceView.command "bs:nav-tabs", => @bs_nav_tabs()
        atom.workspaceView.command "bs:nav-tabs+justified", => @bs_nav_tabs_justified()

        atom.workspaceView.command "bs:nav-pills", => @bs_nav_pills()
        atom.workspaceView.command "bs:nav-pills +justified", => @bs_nav_pills_justified()
        atom.workspaceView.command "bs:nav-pills +stacked", => @bs_nav_pills_stacked()

        atom.workspaceView.command "bs:nav_add_dropdown", => @bs_nav_add_dropdown()

        #    Breadcrumbs
        atom.workspaceView.command "bs:breadcrumbs", => @bs_breadcrumbs()

        #    Pagination
        atom.workspaceView.command "bs:pagination", => @bs_pagination()
        atom.workspaceView.command "bs:pagination +large", => @bs_pagination_large()
        atom.workspaceView.command "bs:pagination +small", => @bs_pagination_small()

        #    Pager
        atom.workspaceView.command "bs:pager", => @bs_pager()
        atom.workspaceView.command "bs:pager_alligned", => @bs_pager_alligned()

        #    Jumbotron
        atom.workspaceView.command "bs:jumbotron-rounded", => @bs_jumbotron_rounded()
        atom.workspaceView.command "bs:jumbotron-not-rounded", => @bs_jumbotron_notrounded()

        #    Thumbnail
        atom.workspaceView.command "bs:thumbnail", => @bs_thumbnail()

        #    Alert
        atom.workspaceView.command "bs:alert-success", => @bs_alert_success()
        atom.workspaceView.command "bs:alert-info", => @bs_alert_info()
        atom.workspaceView.command "bs:alert-warning", => @bs_alert_warning()
        atom.workspaceView.command "bs:alert-danger", => @bs_alert_danger()

        atom.workspaceView.command "bs:alert-success +dismissable", => @bs_alert_success_dismissable()
        atom.workspaceView.command "bs:alert-info +dismissable", => @bs_alert_info_dismissable()
        atom.workspaceView.command "bs:alert-warning +dismissable", => @bs_alert_warning_dismissable()
        atom.workspaceView.command "bs:alert-danger +dismissable", => @bs_alert_danger_dismissable()

        atom.workspaceView.command "bs:alert_add_link", => @bs_alert_add_link()

        #    Progress Bar
        atom.workspaceView.command "bs:progress-bar", => @bs_progressbar()
        atom.workspaceView.command "bs:progress-bar_label", => @bs_progressbar_label()

        atom.workspaceView.command "bs:progress-bar_success", => @bs_progressbar_success()

        #    Add
        atom.workspaceView.command "bs:add_container", => @bs_add_container()
        atom.workspaceView.command "bs:add_badge", => @bs_add_badge()
        atom.workspaceView.command "bs:add_page-header", => @bs_add_pageheader()

    #    Progress Bar
    bs_progressbar: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="progress">')
        editor.insertNewlineBelow()

        editor.insertText('<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">')
        editor.insertNewlineBelow()

        editor.insertText('<span class="sr-only">60% Complete</span>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

    bs_progressbar_label: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="progress">')
        editor.insertNewlineBelow()

        editor.insertText('<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">')
        editor.insertNewlineBelow()

        editor.insertText('60%')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

    bs_progressbar_success: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="progress">')
        editor.insertNewlineBelow()

        editor.insertText('<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">')
        editor.insertNewlineBelow()

        editor.insertText('<span class="sr-only">60% Complete</span>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

    bs_progressbar_info: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="progress">')
        editor.insertNewlineBelow()

        editor.insertText('<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">')
        editor.insertNewlineBelow()

        editor.insertText('<span class="sr-only">60% Complete</span>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

    bs_progressbar_warning: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="progress">')
        editor.insertNewlineBelow()

        editor.insertText('<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">')
        editor.insertNewlineBelow()

        editor.insertText('<span class="sr-only">60% Complete</span>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

    bs_progressbar_danger: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="progress">')
        editor.insertNewlineBelow()

        editor.insertText('<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">')
        editor.insertNewlineBelow()

        editor.insertText('<span class="sr-only">60% Complete</span>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

    #   Nav
    bs_nav_default: ->

        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<nav class="navbar navbar-default" role="navigation">')
        editor.insertNewlineBelow()

        editor.insertText('<div class="container-fluid">')
        editor.insertNewlineBelow()

        editor.insertText('<!-- Brand and toggle get grouped for better mobile display -->')
        editor.insertNewlineBelow()

        editor.insertText('<div class="navbar-header">')
        editor.insertNewlineBelow()

        editor.insertText('<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">')
        editor.insertNewlineBelow()

        editor.insertText('<span class="sr-only">Toggle navigation</span>')
        editor.insertNewlineBelow()

        editor.insertText('<span class="icon-bar"></span>')
        editor.insertNewlineBelow()

        editor.insertText('<span class="icon-bar"></span>')
        editor.insertNewlineBelow()

        editor.insertText('<span class="icon-bar"></span>')
        editor.insertNewlineBelow()

        editor.insertText('</button>')
        editor.insertNewlineBelow()

        editor.insertText('<a class="navbar-brand" href="#">Brand</a>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()


        editor.insertText('<!-- Collect the nav links, forms, and other content for toggling -->')
        editor.insertNewlineBelow()

        editor.insertText('<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">')
        editor.insertNewlineBelow()

        editor.insertText('<ul class="nav navbar-nav">')
        editor.insertNewlineBelow()

        editor.insertText('<li class="active"><a href="#">Link</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">Link</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li class="dropdown">')
        editor.insertNewlineBelow()

        editor.insertText('<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>')
        editor.insertNewlineBelow()

        editor.insertText('<ul class="dropdown-menu">')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">Action</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">Another action</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">Something else here</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li class="divider"></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">Separated link</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li class="divider"></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">One more separated link</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

        editor.insertText('</li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

        editor.insertText('<form class="navbar-form navbar-left" role="search">')
        editor.insertNewlineBelow()

        editor.insertText('<div class="form-group">')
        editor.insertNewlineBelow()

        editor.insertText('<input type="text" class="form-control" placeholder="Search">')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

        editor.insertText('<button type="submit" class="btn btn-default">Submit</button>')
        editor.insertNewlineBelow()

        editor.insertText('</form>')
        editor.insertNewlineBelow()

        editor.insertText('<ul class="nav navbar-nav navbar-right">')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">Link</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li class="dropdown">')
        editor.insertNewlineBelow()

        editor.insertText('<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>')
        editor.insertNewlineBelow()

        editor.insertText('<ul class="dropdown-menu">')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">Action</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">Another action</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">Something else here</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li class="divider"></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">Separated link</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

        editor.insertText('</li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

        editor.insertText('</nav>')
        editor.insertNewlineBelow()

    bs_nav_tabs: ->

        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<ul class=\"nav nav-tabs\">')
        editor.insertNewlineBelow()

        editor.insertText('<li class=\"active\"><a href=\"#\">Home</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href=\"#\">Profile</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href=\"#\">Messages</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

    bs_nav_tabs_justified: ->

        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<ul class=\"nav nav-tabs nav-justified\">')
        editor.insertNewlineBelow()

        editor.insertText('<li class=\"active\"><a href=\"#\">Home</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href=\"#\">Profile</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href=\"#\">Messages</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

    bs_nav_pills: ->

        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<ul class=\"nav nav-pills\">')
        editor.insertNewlineBelow()

        editor.insertText('<li class=\"active\"><a href=\"#\">Home</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href=\"#\">Profile</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href=\"#\">Messages</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

    bs_nav_pills_justified: ->

        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<ul class=\"nav nav-pills nav-justified\">')
        editor.insertNewlineBelow()

        editor.insertText('<li class=\"active\"><a href=\"#\">Home</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href=\"#\">Profile</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href=\"#\">Messages</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

    bs_nav_pills_stacked: ->

        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<ul class=\"nav nav-pills nav-stacked\">')
        editor.insertNewlineBelow()

        editor.insertText('<li class=\"active\"><a href=\"#\">Home</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href=\"#\">Profile</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href=\"#\">Messages</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

    bs_nav_add_dropdown: ->

        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<li class="dropdown">')
        editor.insertNewlineBelow()

        editor.insertText('<a class="dropdown-toggle" data-toggle="dropdown" href="#">')
        editor.insertNewlineBelow()

        editor.insertText('Dropdown <span class="caret"></span>')
        editor.insertNewlineBelow()

        editor.insertText('</a>')
        editor.insertNewlineBelow()

        editor.insertText('<ul class="dropdown-menu">')
        editor.insertNewlineBelow()

        editor.insertText('<li>...</li>')
        editor.insertNewlineBelow()

        editor.insertText('<li>...</li>')
        editor.insertNewlineBelow()

        editor.insertText('<li>...</li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

        editor.insertText('</li>')
        editor.insertNewlineBelow()

    #    Breadcrumbs
    bs_breadcrumbs: ->

        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<ol class="breadcrumb">')
        editor.insertNewlineBelow()

        editor.insertText('<li class="active"><a href="#">Home</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">Library</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">Data</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('</ol>')
        editor.insertNewlineBelow()

    #    Pagination
    bs_pagination: ->

        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<ul class="pagination">')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">&laquo;</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">1</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">2</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">3</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">4</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">&raquo;</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

    bs_pagination_large: ->

        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<ul class="pagination pagination-lg">')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">&laquo;</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">1</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">2</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">3</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">4</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">&raquo;</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

    bs_pagination_small: ->

        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<ul class="pagination pagination-sm">')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">&laquo;</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">1</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">2</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">3</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">4</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">&raquo;</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

    #    Pager
    bs_pager: ->

        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<ul class="pager">')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">Previous</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li><a href="#">Next</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

    bs_pager_alligned: ->

        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<ul class="pager">')
        editor.insertNewlineBelow()

        editor.insertText('<li class="previous"><a href="#" >Previous</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('<li class="next"><a href="#">Next</a></li>')
        editor.insertNewlineBelow()

        editor.insertText('</ul>')
        editor.insertNewlineBelow()

    #    Jumbotron
    bs_jumbotron_rounded: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="jumbotron">')
        editor.insertNewlineBelow()

        editor.insertText('<h1>Hello, world!</h1>')
        editor.insertNewlineBelow()

        editor.insertText('<p>...</p>')
        editor.insertNewlineBelow()

        editor.insertText('<p><a class="btn btn-primary btn-lg" role="button">Learn more</a></p>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

    bs_jumbotron_notrounded: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="jumbotron">')
        editor.insertNewlineBelow()

        editor.insertText('<div class="container">')
        editor.insertNewlineBelow()

        editor.insertText('<h1>Hello, world!</h1>')
        editor.insertNewlineBelow()

        editor.insertText('<p>...</p>')
        editor.insertNewlineBelow()

        editor.insertText('<p><a class="btn btn-primary btn-lg" role="button">Learn more</a></p>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()

    #    Thumbnail
    bs_thumbnail: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="thumbnail">')
        editor.NewlineBelow()

        editor.insertText('<img data-src="holder.js/300x200" alt="...">')
        editor.NewlineBelow()

        editor.insertText('<div class="caption">')
        editor.NewlineBelow()

        editor.insertText('<h3>Thumbnail label</h3>')
        editor.NewlineBelow()

        editor.insertText('<p>...</p>')
        editor.NewlineBelow()

        editor.insertText('<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>')
        editor.NewlineBelow()

        editor.insertText('</div>')
        editor.NewlineBelow()

        editor.insertText('</div>')
        editor.NewlineBelow()

    #    Alert
    bs_alert_success: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="alert alert-success">...</div>')
        editor.insertNewLineBelow()

            bs_alert_success_dismissable: ->
                editor = atom.workspaceView.getActivePaneItem()

                editor.insertText('<div class="alert alert-success alert-dismissable">')
                editor.insertNewLineBelow()

                editor.insertText('<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>')
                editor.insertNewLineBelow()

                editor.insertText('<strong>Success!</strong> You are an amazing human.')
                editor.insertNewLineBelow()

                editor.insertText('</div>')
                editor.insertNewLineBelow()



    bs_alert_info: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="alert alert-info">...</div>')
        editor.insertNewLineBelow()

            bs_alert_info_dismissable: ->
                editor = atom.workspaceView.getActivePaneItem()

                editor.insertText('<div class="alert alert-info alert-dismissable">')
                editor.insertNewlineBelow()

                editor.insertText('<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>')
                editor.insertNewlineBelow()

                editor.insertText('<strong>Yo!</strong> Coffee is hot.')
                editor.insertNewlineBelow()

                editor.insertText('</div>')
                editor.insertNewlineBelow()


    bs_alert_warning: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="alert alert-warning">...</div>')
        editor.insertNewlineBelow()

            bs_alert_warning_dismissable: ->
                editor = atom.workspaceView.getActivePaneItem()

                editor.insertText('<div class="alert alert-success alert-dismissable">')
                editor.insertNewlineBelow()

                editor.insertText('<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>')
                editor.insertNewlineBelow()

                editor.insertText('<strong>Warning!</strong> Check yourself before you wreck yourself.')
                editor.insertNewlineBelow()

                editor.insertText('</div>')
                editor.insertNewlineBelow()


    bs_alert_danger: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="alert alert-danger">...</div>')
        editor.insertNewlineBelow()

                bs_alert_alert_dismissable: ->
                    editor = atom.workspaceView.getActivePaneItem()

                    editor.insertText('<div class="alert alert-alert alert-dismissable">')
                    editor.insertNewlineBelow()

                    editor.insertText('<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>')
                    editor.insertNewlineBelow()

                    editor.insertText('<strong>Error!</strong> Something goofed up.')
                    editor.insertNewlineBelow()

                    editor.insertText('</div>')
                    editor.insertNewlineBelow()

    bs_alert_add_link:->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<a href="#" class="alert-link">...</a>')
        editor.insertNewlineBelow


    #    Add
    bs_add_container: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="container">')
        editor.insertNewlineBelow()

        editor.insertText('</div>')

    bs_add_badge: ->
        editor = atom.workspaceView.getActivePaneItem()
        editor.insertText('<span class="badge"></span>')


    bs_add_pageheader: ->
        editor = atom.workspaceView.getActivePaneItem()

        editor.insertText('<div class="page-header">')
        editor.insertNewlineBelow()

        editor.insertText('<h1>Example page header <small>Subtext for header</small></h1>')
        editor.insertNewlineBelow()

        editor.insertText('</div>')
        editor.insertNewlineBelow()


































#bottom
