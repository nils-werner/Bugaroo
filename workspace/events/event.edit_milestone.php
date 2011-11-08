<?php

	require_once(TOOLKIT . '/class.event.php');

	Class eventedit_milestone extends Event{

		const ROOTELEMENT = 'edit-milestone';

		public $eParamFILTERS = array(
			
		);

		public static function about(){
			return array(
				'name' => 'Edit Milestone',
				'author' => array(
					'name' => 'Default Administrator',
					'website' => 'http://bugaroo.localhost',
					'email' => 'nobody@bugaroo.symphony-cms.com'),
				'version' => 'Symphony 2.2.2',
				'release-date' => '2011-11-08T10:49:55+00:00',
				'trigger-condition' => 'action[edit-milestone]'
			);
		}

		public static function getSource(){
			return '9';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;edit-milestone result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/edit-milestone></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;edit-milestone result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/edit-milestone></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
  &lt;label>Title
    &lt;input name="fields[title]" type="text" />
  &lt;/label>
  &lt;label>Description
    &lt;textarea name="fields[description]" rows="15" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;label>Status
    &lt;select name="fields[status]">
      &lt;option value="Active">Active&lt;/option>
      &lt;option value="Inactive">Inactive&lt;/option>
      &lt;option value="Finished">Finished&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;input name="fields[project]" type="hidden" value="..." />
  &lt;label>Due
    &lt;input name="fields[due]" type="text" />
  &lt;/label>
  &lt;label>None
    &lt;input name="fields[none]" type="checkbox" />
  &lt;/label>
  &lt;input name="action[edit-milestone]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://bugaroo.localhost/success/" /></code></pre>';
		}

		public function load(){
			if(isset($_POST['action']['edit-milestone'])) return $this->__trigger();
		}

		protected function __trigger(){
			include(TOOLKIT . '/events/event.section.php');
			return $result;
		}

	}
