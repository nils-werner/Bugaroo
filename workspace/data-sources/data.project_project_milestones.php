<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourceproject_project_milestones extends Datasource{
		
		public $dsParamROOTELEMENT = 'project-project-milestones';
		public $dsParamORDER = 'desc';
		public $dsParamLIMIT = '999';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamSTARTPAGE = '1';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		
		public $dsParamFILTERS = array(
				'33' => '{$ds-project-project}',
		);
		
		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'description: formatted',
				'status',
				'project',
				'due'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array('$ds-project-project');
		}
		
		public function about(){
			return array(
					 'name' => 'Project Project Milestones',
					 'author' => array(
							'name' => 'Nils Werner',
							'website' => 'http://trac.obsessive-media.de.localhost',
							'email' => 'nils.werner@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2010-02-07T22:05:15+00:00');	
		}
		
		public function getSource(){
			return '9';
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

