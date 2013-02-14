<?php

/**
 * @file
 * Installation profile hook implementations.
 */

/**
 * Implements hook_form_FORM_ID_alter().
 *
 * We need to act here as if we are the system module, as installation profiles
 * can not alter the install_settings_form right now. Consult
 * http://drupal.org/node/1153646 for more information.
 *
 * @todo add the autocomplete attribute to some fields like password and e-mail,
 *   otherwise some browsers will autofill it with saved passwords
 */
function system_form_install_settings_form_alter(&$form, $form_state) {
  if (isset($form['settings']['mysql'])) {
    // expand the fieldset by default
    $form['settings']['mysql']['advanced_options']['#collapsed'] = FALSE;

    $form['settings']['mysql']['advanced_options']['host']['#default_value'] = 'localhost';
  }
}

/**
 * Implements hook_form_FORM_ID_alter().
 */
function cegeka_form_install_configure_form_alter(&$form, $form_state) {
  $form['admin_account']['account']['name']['#default_value'] = 'admin';

  $form['server_settings']['site_default_country']['#default_value'] = 'BE';

  // the timezone is detected with some JavaScript, but it is not capable of
  // detecting the specific zone from the timezonedb, so any zone with CET
  // will be detected as the first zone with CET, which is Europe/Berlin
  // to circumvent this, we just remove the JavaScript detection and set the
  // default timezone to Europe/Brussels
  $javascript = &drupal_static('drupal_add_js', array());
  unset($javascript['misc/timezone.js']);

  $form['server_settings']['date_default_timezone']['#default_value'] = 'Europe/Brussels';

  $form['update_notifications']['update_status_module']['#default_value'] = array(1);

  $form['#submit'][] = 'cegeka_install_configure_form_submit';
}

/**
 * Additional submit callback for the install_configure_form form, to set the
 * reroute_email address.
 */
function cegeka_install_configure_form_submit($form, &$form_state) {
  variable_set('reroute_email_address', $form_state['values']['account']['mail']);
}

/**
 * Disable core custom blocks functionality because it is not easily featureable.
 */
function cegeka_menu_alter(&$menu) {
  unset($menu['admin/structure/block/add']);

  foreach (list_themes() as $key => $theme) {
    unset($menu['admin/structure/block/list/' . $key . '/add']);
  }
}
