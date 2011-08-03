<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourceproject_project_issues_filtered extends Datasource{
		
		public $dsParamROOTELEMENT = 'project-project-issues-filtered';
		public $dsParamORDER = '{$url-order:desc}';
		public $dsParamLIMIT = '20';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamPARAMOUTPUT = 'system:id';
		public $dsParamSORT = '{$url-sort:date}';
		public $dsParamSTARTPAGE = '{$page:1}';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'yes';
		
		public $dsParamFILTERS = array(
				
				'41' => '{$url-priority}',
				'42' => '{$url-category}',
				'43' => '{$url-assignee}',
				'44' => '{$url-milestone}',
				'58' => '{$url-status}',
				'39' => '{$ds-project-project}',
		);
		
		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'title',
				'date',
				'author',
				'priority',
				'category',
				'assignee',
				'milestone',
				'status',
				'project'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			if(isset($_GET['q'])) {
				if(ctype_digit($_GET['q'])) {
					$this->dsParamFILTERS['id'] = '{$url-q}';
				}
				else {
					$this->dsParamFILTERS['37'] = 'regexp:{$url-q}';
				}
			}
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array('$ds-project-project');
		}
		
		public function about(){
			return array(
					 'name' => 'Project Project Issues Filtered',
					 'author' => array(
							'name' => 'Nils Werner',
							'website' => 'http://trac.obsessive-media.de.localhost',
							'email' => 'nils.werner@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2010-02-07T23:05:30+00:00');	
		}
		
		public function getSource(){
			return '12';
		}
		
		public function allowEditorToParse(){
			return false;
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

