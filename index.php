<?php
$servername = "localhost";
$username = "admin";
$password = "test1221";
$dbname = "firstproject";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "database connection successfull"; 

$myfile = fopen("wordlist.txt", "r") or die("Unable to open file!");
$array = fread($myfile,filesize("wordlist.txt"));
$words = preg_split('/\s+/', $array, -1, PREG_SPLIT_NO_EMPTY);
foreach($words as $value){
      $url = 'https://api.dictionaryapi.dev/api/v2/entries/en';
      $curl = curl_init($url . '/' . $value);
      curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
      $response = curl_exec($curl);
      curl_close($curl);
        $someArray = json_decode($response . PHP_EOL, true);
        if (array_key_exists('title', $someArray)) {
          if($someArray["title"] =='No Definitions Found'){
            echo $someArray["title"];
          }
        }else{
          echo $someArray[0]["word"];
          $keyName =  $someArray[0]["word"];
          $phonetic =  $someArray[0]["phonetic"];
          $phonetics =  $someArray[0]["phonetics"][0]["text"];
          if (array_key_exists('origin', $someArray)) 
            $origin =  $someArray[0]["origin"];
          else
            $origin = '';
          
            $meanings = $someArray[0]["word"];
          $sql = "INSERT INTO word_data (word,phonetic,phonetics,origin,meanings) VALUES ('$keyName','$phonetic','$phonetics','$origin','$meanings')";
          if ($conn->query($sql) === TRUE) {
              echo "New record created successfully";
            } else {
              echo "Error: " . $sql . "<br>" . $conn->error;
            }
          }   
    }
    fclose($myfile);
?>
