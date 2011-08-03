<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourceproject_project extends Datasource{
		
		public $dsParamROOTELEMENT = 'project-project';
		public $dsParamORDER = 'desc';
		public $dsParamLIMIT = '1';
		public $dsParamREDIRECTONEMPTY = 'yes';
		public $dsParamREQUIREDPARAM = '$project';
		public $dsParamPARAMOUTPUT = 'system:id';
		public $dsParamSORT = 'system:id';
		public $dsParamSTARTPAGE = '1';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'yes';
		
		public $dsParamFILTERS = array(
				'26' => '{$project}',
		);
		
		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'description: formatted',
				'status',
				'contributors',
				'administrators'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Project Project',
					 'author' => array(
							'name' => 'Nils Werner',
							'website' => 'http://trac.obsessive-media.de.localhost',
							'email' => 'nils.werner@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2010-02-08T00:16:15+00:00');	
		}
		
		public function getSource(){
			return '8';
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

