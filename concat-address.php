<?php
function concatenateAddress($address_line_one, $address_line_two, $suburb, $state, $postcode, $country, $multiLine){
	$fullAddress = "";
	
	//Address line 1
	if($address_line_one != ""){
		$fullAddress .= $address_line_one;
		
		//Add space if there is still more address to come
		if($address_line_two != "" || $suburb != "" || $state != "" || $postcode != "" || $country != "") {
			$fullAddress .= " ";
		}
	}	
	//Address line 2					
	if($address_line_two != ""){
		$fullAddress .= $address_line_two.", ";
	}
	//Add line if multiline
	if($multiLine){
		$fullAddress .= "<br/>";
	}
	//Suburb						
	if($suburb != ""){
		$fullAddress .= $suburb." ";
	}
	//State	
	if($state != ""){
		$fullAddress .= $state." ";
	}						
	//Postcode	
	if($postcode != ""){
		$fullAddress .= $postcode;
		
		//Add comma if there is still more address to come
		if($country != "") {
			$fullAddress .= ", ";
			if($multiLine){
				$fullAddress .= "<br/>";
			}
		}
	}						
	//Country
	if($country != ""){
		$fullAddress .= $country;
	}
	return $fullAddress;
}
?>