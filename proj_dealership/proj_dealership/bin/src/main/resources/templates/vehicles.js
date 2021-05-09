import React, { Component } from 'react';

//make API calls to backend
import axios from 'axios';

//CSS Framework for developing responsive websites
import { Table } from "react-bootstrap";

class display extends Component {
    constructor(props) {
        super(props);
        this.state = {
            result: [],
            error: ""
        }
    }

    componentDidMount() {
        axios.get('http://localhost:8080/vehicles')
            .then((response) => {
                //update the state with the response data
                this.setState({
                    result: response.data._embedded.beers
                });
            })
            .catch(err => {
                this.setState({
                    error: <div className="alert alert-warning" style={{ marginTop: '5%' }}>Error</div>
                })
            });
    }

    render() {
        let error = this.state.error;

        let details = this.state.result.map(vehicles => {
            return (
                <tr>
                    <td>{vehicles.id}</td>
                    <td>{vehicles.name}</td>
                    <td>{vehicles.tyoe}</td>
                    <td>{vehicles.brand}</td>
                    <td>{vehicles.year}</td>
                    <td>{vehicles.mileage}</td>
                </tr>
            )
        })
        return (
            <div style={{ textAlign: "center" }}>
                <div className="container">
                    <br></br>
                    <h2>List of Vehicles</h2>
                    <br></br>
                    <div>
                        <Table class="table table-dark">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">id</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">type</th>
                                    <th scope="col">brand</th>
                                    <th scope="col">year</th>
                                    <th scope="col">int</th>
                                </tr>
                            </thead>
                            <tbody>
                                {/*Display the Tbale row based on data recieved*/}
                                {details}
                            </tbody>
                        </Table>
                        {error}
                    </div>
                </div>
            </div>
        )
    }
}

export default display;
