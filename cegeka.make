core = 7.x
api = 2

projects[] = admin_menu

; ?
;projects[] = better_exposed_filters


; ?
;projects[] = context

projects[] = ctools

; ?
;projects[] = date

projects[] = devel

projects[] = diff

; ?
;projects[] = email

; required by views_bulk_operations
projects[] = entity

projects[] = features

; are these necessary in a core profile?
;projects[] = field_collection
;projects[] = field_group

projects[] = google_analytics

projects[] = i18n

projects[] = i18nviews

projects[] = imce
projects[] = imce_wysiwyg

projects[] = l10n_client

; beta 3 release is quite outdated (Februari 2012), so we use dev instead, beta-3 gives fatal error on installation
projects[l10n_update][version] = 1.x-dev

; required by our admin theme woody
;projects[] = less

; ?
; projects[] = link

; required by views_slideshow_cycle (part of views_slideshow project)
projects[] = libraries

projects[] = menu_block

projects[] = module_filter

projects[] = override_node_options

projects[] = panels

projects[] = pathauto

projects[redirect][version] = 1.x-dev

projects[] = reroute_email

; ?
;projects[] = rules

projects[] = strongarm

projects[suggestions][type] = module
projects[suggestions][download][type] = git
projects[suggestions][download][url] = https://github.com/maerts/suggestions.git
project[suggestions][download][branch] = master

projects[cegeka_suggestion_profiles][type] = module
projects[cegeka_suggestion_profiles][download][type] = git
projects[cegeka_suggestion_profiles][download][url] = https://github.com/maerts/cegeka_suggestion_profiles.git
project[cegeka_suggestion_profiles][download][branch] = master

; required by pathauto
projects[] = token

projects[] = transliteration

projects[] = variable

projects[] = view_unpublished

; latest recommended views release has a bug which makes our cm views fail, see http://drupal.org/node/1224630
projects[views][version] = 3.x-dev

projects[] = views_bulk_operations

; ?
;projects[] = views_data_export

projects[] = views_slideshow

projects[] = webform

projects[wysiwyg][version] = 2.x-dev
;projects[wysiwyg][patch][lazy-loading-356480-121][url] = http://drupal.org/files/lazy_wysiwyg-356480-121.patch

projects[references][version] = 2.x-dev

projects[] = link

; themes
; ------

projects[] = rubik

projects[] = tao

; libraries
; ---------

;libraries[tinymce][download][type] = file
;libraries[tinymce][download][url] = http://cloud.github.com/downloads/tinymce/tinymce/tinymce_3.4.9.zip

; delete this once http://drupal.org/node/1330166 is fixed
;libraries[jquery.cycle][download][type] = file
;libraries[jquery.cycle][download][url] = https://raw.github.com/malsup/cycle/master/jquery.cycle.all.js

; views_slideshow's jQuery Cycle Custom Options require json2 library
;libraries[json2][download][type] = file
;libraries[json2][download][url] = https://raw.github.com/douglascrockford/JSON-js/master/json2.js

; less PHP library
;libraries[lessphp][download][type] = file
;libraries[lessphp][download][url] = http://leafo.net/lessphp/src/lessphp-0.3.4-2.tar.gz 
