<html>
<head>
    <title>Bind SELECT Dropdown with JSON using JavaScript</title>
</head>
<body>
    <p>
        <input type="button" 
            onclick="populateSelect()" 
                value="Click to Populate SELECT with JSON" />
    </p>

    <!--The SELECT element.-->
    <select id="sel" onchange="show(this)">
        <option value="">-- Select --</option>
    </select>

    <p id="msg"></p>
</body>

<script>
    function populateSelect() {
        // THE JSON ARRAY.
        var birds = [
            {"ID": "001", "Bird_Name": "Eurasian Collared-Dove"},
            {"ID": "002", "Bird_Name": "Bald Eagle"},
            {"ID": "003", "Bird_Name": "Cooper's Hawk"},
        ];

        var ele = document.getElementById('sel');
        for (var i = 0; i < birds.length; i++) {
            // POPULATE SELECT ELEMENT WITH JSON.
            ele.innerHTML = ele.innerHTML +
                '<option value="' + birds[i]['ID'] + '">' + birds[i]['Bird_Name'] + '</option>';
        }
    }

    function show(ele) {
        // GET THE SELECTED VALUE FROM <select> ELEMENT AND SHOW IT.
        var msg = document.getElementById('msg');
        msg.innerHTML = 'Selected Bird: <b>' + ele.options[ele.selectedIndex].text + '</b> </br>' +
            'ID: <b>' + ele.value + '</b>';
    }
</script>
</html>