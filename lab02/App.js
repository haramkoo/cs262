// Name: Ha-Ram Koo, Joshua Ridder.
import { StatusBar } from 'expo-status-bar';
import React, {useState} from 'react';
import { StyleSheet, Text, View, Button, TextInput, FlatList } from 'react-native';

export default function App() {
  const [name, setName] = useState('...');
  const [age, setAge] = useState(0);
  const [birthdays, setBirthdays] = useState([]);
  
  
  
  const whenClicked = () => {
    setAge(age + 1);
    
    setBirthdays(
      birthdays.concat({key: (age+1).toString()}));

    
   }
  
  return (
    
    <View style={styles.container}>
      <text>Enter Name:</text>
      
      
      <TextInput style= {styles.input}
        placeholder='e.g. Santa Claus'
        onChangeText={(val) => setName(val)}
      />
      

      <Button title='BIRTHDAY'
      onPress={whenClicked}
      />
    

      <Text>{name} is {age} years old. </Text>
      
      <FlatList
        keyExtractor={(item) => item.age}
         data={birthdays}
         renderItem={({item}) => (
           <Text>{item.key}</Text>)}
         />

    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  input: {
    borderWidth: 1,
    borderColor: '#777',
    padding: 8,
    margin: 10,
    width: 200,
  }
});
