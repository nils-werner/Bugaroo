<?php

	require_once(TOOLKIT . '/class.event.php');

	Class eventedit_project extends Event{

		const ROOTELEMENT = 'edit-project';

		public $eParamFILTERS = array(
			
		);

		public static function about(){
			return array(
				'name' => 'Edit Project',
				'author' => array(
					'name' => 'Default Administrator',
					'website' => 'http://bugaroo.localhost',
					'email' => 'nobody@bugaroo.symphony-cms.com'),
				'version' => 'Symphony 2.2.2',
				'release-date' => '2011-11-08T10:50:16+00:00',
				'trigger-condition' => 'action[edit-project]'
			);
		}

		public static function getSource(){
			return '8';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;edit-project result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/edit-project></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;edit-project result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/edit-project></code></pre>
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
  &lt;input name="fields[contributors]" type="hidden" value="..." />
  &lt;input name="fields[administrators]" type="hidden" value="..." />
  &lt;label>Order
    &lt;input name="fields[order]" type="text" />
  &lt;/label>
  &lt;input name="action[edit-project]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://bugaroo.localhost/success/" /></code></pre>';
		}

		public function load(){
			if(isset($_POST['action']['edit-project'])) return $this->__trigger();
		}

		protected function __trigger(){
			include(TOOLKIT . '/events/event.section.php');
			return $result;
		}

	}
