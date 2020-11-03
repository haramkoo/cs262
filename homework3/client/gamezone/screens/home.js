import React, { useState, useEffect } from 'react';
import { ActivityIndicator, View, Text, TouchableOpacity, FlatList } from 'react-native';
import { globalStyles } from '../styles/global';
import Card from '../shared/card';

export default function Home({ navigation }) {

    const [isLoading, setLoading] = useState(true);
    const [data, setData] = useState([]);

    useEffect(() => {
        fetch('https://pacific-woodland-61383.herokuapp.com/pieces')
            .then((response) => response.json())
            .then((json) => setData(json))
            .catch((error) => console.error(error))
            .finally(() => setLoading(false));
      }, []);

    return (
        <View style={globalStyles.container}>
             {isLoading ? <ActivityIndicator/> : (
                <FlatList data={data} keyExtractor={({piecelocation}, index)=> piecelocation.toString()} renderItem={({ item }) => (
                    <TouchableOpacity onPress={() => navigation.navigate('ReviewDetails', item)}>
                        <Card>
                            <Text style={globalStyles.titleText}>{ item.name }</Text>
                        </Card>
                    </TouchableOpacity>
                )} />
            )}
        </View>
    );
}
