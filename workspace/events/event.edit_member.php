<?php

	require_once(TOOLKIT . '/class.event.php');

	Class eventedit_member extends Event{

		const ROOTELEMENT = 'edit-member';

		public $eParamFILTERS = array(
			
		);

		public static function about(){
			return array(
				'name' => 'Edit Member',
				'author' => array(
					'name' => 'Default Administrator',
					'website' => 'http://bugaroo.localhost',
					'email' => 'nobody@bugaroo.symphony-cms.com'),
				'version' => 'Symphony 2.2.2',
				'release-date' => '2011-11-08T10:51:24+00:00',
				'trigger-condition' => 'action[edit-member]'
			);
		}

		public static function getSource(){
			return '15';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;edit-member result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/edit-member></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;edit-member result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/edit-member></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
  &lt;label>Name
    &lt;input name="fields[name]" type="text" />
  &lt;/label>
  &lt;label>Username
    &lt;input name="fields[username]" type="text" />
  &lt;/label>
  &lt;label>Email
    &lt;input name="fields[email]" type="text" />
  &lt;/label>
  &lt;fieldset>
    &lt;label>Password
      &lt;input name="fields[password][password]" type="password" />
    &lt;/label>
    &lt;label>Password Confirm
      &lt;input name="fields[password][confirm]" type="password" />
    &lt;/label>
  &lt;/fieldset>
  &lt;label>Role
    &lt;select name="fields[role]">
      &lt;option value="1">Public&lt;/option>
      &lt;option value="2">Administrator&lt;/option>
      &lt;option value="3">Developer&lt;/option>
      &lt;option value="4">Client&lt;/option>
      &lt;option value="5">Nobody&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;label>Company
    &lt;input name="fields[company]" type="text" />
  &lt;/label>
  &lt;input name="fields[detailed]" type="hidden" value="..." />
  &lt;input name="fields[hide]" type="hidden" value="..." />
  &lt;input name="fields[subscriptions]" type="hidden" value="..." />
  &lt;input name="action[edit-member]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://bugaroo.localhost/success/" /></code></pre>';
		}

		public function load(){
			if(isset($_POST['action']['edit-member'])) return $this->__trigger();
		}

		protected function __trigger(){
			include(TOOLKIT . '/events/event.section.php');
			return $result;
		}

	}
