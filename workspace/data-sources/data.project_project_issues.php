<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceproject_project_issues extends Datasource{

		public $dsParamROOTELEMENT = 'project-project-issues';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamPARAMOUTPUT = 'system:id';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';

		public $dsParamFILTERS = array(
				'39' => '{$ds-project-project}',
		);

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'status'
		);


		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array('$ds-project-project');
		}

		public function about(){
			return array(
				'name' => 'Project Project Issues',
				'author' => array(
					'name' => 'Default Administrator',
					'website' => 'http://bugaroo.localhost',
					'email' => 'nobody@bugaroo.symphony-cms.com'),
				'version' => 'Symphony 2.2.2',
				'release-date' => '2011-12-06T14:13:15+00:00'
			);
		}

		public function getSource(){
			return '12';
		}

		public function allowEditorToParse(){
			return true;
		}

		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);

			try{
				include(TOOLKIT . '/data-sources/datasource.section.php');
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}

			if($this->_force_empty_result) $result = $this->emptyXMLSet();

			

			return $result;
		}

	}
