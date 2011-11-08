<?php

	require_once(TOOLKIT . '/class.event.php');

	Class eventedit_issue extends Event{

		const ROOTELEMENT = 'edit-issue';

		public $eParamFILTERS = array(
			
		);

		public static function about(){
			return array(
				'name' => 'Edit Issue',
				'author' => array(
					'name' => 'Default Administrator',
					'website' => 'http://bugaroo.localhost',
					'email' => 'nobody@bugaroo.symphony-cms.com'),
				'version' => 'Symphony 2.2.2',
				'release-date' => '2011-11-08T10:54:14+00:00',
				'trigger-condition' => 'action[edit-issue]'
			);
		}

		public static function getSource(){
			return '12';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;edit-issue result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/edit-issue></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;edit-issue result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/edit-issue></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
  &lt;label>Title
    &lt;input name="fields[title]" type="text" />
  &lt;/label>
  &lt;label>Date
    &lt;input name="fields[date]" type="text" />
  &lt;/label>
  &lt;input name="fields[creator]" type="hidden" value="..." />
  &lt;input name="fields[priority]" type="hidden" value="..." />
  &lt;input name="fields[category]" type="hidden" value="..." />
  &lt;input name="fields[assignee]" type="hidden" value="..." />
  &lt;input name="fields[milestone]" type="hidden" value="..." />
  &lt;input name="fields[status]" type="hidden" value="..." />
  &lt;input name="fields[project]" type="hidden" value="..." />
  &lt;label>Modified
    &lt;input name="fields[modified]" type="text" />
  &lt;/label>
  &lt;input name="fields[modifier]" type="hidden" value="..." />
  &lt;input name="action[edit-issue]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://bugaroo.localhost/success/" /></code></pre>';
		}

		public function load(){
			if(isset($_POST['action']['edit-issue'])) return $this->__trigger();
		}

		protected function __trigger(){
			include(TOOLKIT . '/events/event.section.php');
			return $result;
		}

	}
