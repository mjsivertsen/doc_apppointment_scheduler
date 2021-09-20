import React, { useState, useEffect } from "react";
import axios from "axios";
import { Button, Card, CardContent, CardHeader, Header, Table } from "semantic-ui-react";
import SimpleLoader from "../components/SimpleLoader";
import SimpleError from "../components/SimpleError";
import { Link } from "react-router-dom";
import useAxiosOnMount from "../components/useAxiosOnMount";
import ViewAppointment from "./ViewAppointment";
import { Switch, Route } from "react-router-dom"

const Appointments = () => {
const { data: appointments, loading, error } = useAxiosOnMount("/api/appointments")

  // const [appointments, setAppointments] = useState ([]);
  // const [loading, setLoading] = useState (true)
  // const [error, setError] = useState(null);

  // useEffect (() => {
  //   getAppointments();
  // }, [] 
  // );

  const renderAppointments = () => {
    if (loading) return <SimpleLoader />
    if (error)
      return (
        <SimpleError
        header={"Well that didn't work."}
        error={error} />
      )
    if (appointments.length === 0) {
      return <p> No appointments scheduled.</p>
    }
     return appointments.map( (a) => {
        return (
      <Table.Row key="a.id">
        <Table.Cell>{a.doctor.name}</Table.Cell>
        <Table.Cell>{a.patient.name}</Table.Cell>
        <Table.Cell>{a.patient.phone}</Table.Cell>
        <Table.Cell>{a.datetime}</Table.Cell>
        <Table.Cell>
          <Link to={`/appointments/${a.id}`}>
            <Button>

            View Appointment
          </Button>
          </Link>
        </Table.Cell>
      </Table.Row>
        )})}

          //want to make table sortable and filterable goddangit//


          //not necessary useAxiosOnMount
    //   const getAppointments = async () => {
    //   try {
    //     setError(null)
    //     let res = await axios.get("/api/appointments")
    //     console.log(res.data)
    //     setAppointments(res.data)
    //   }
    //   catch (error) {
    //     setError(error)
    //     }
    //   finally {
    //     setLoading(false)
    //   }
    // };
          //not necessary useAxiosOnMount

  return (
    <div>
    <Header>
    Appointments
    </Header> 
    <Table celled>
    <Table.Header>
      <Table.Row>
        <Table.HeaderCell>Doctor Name</Table.HeaderCell>
        <Table.HeaderCell>Patient Name</Table.HeaderCell>
        <Table.HeaderCell>Patient Phone</Table.HeaderCell>
        <Table.HeaderCell>Date and Time</Table.HeaderCell>
        <Table.HeaderCell> </Table.HeaderCell>
      </Table.Row>
    </Table.Header>
    <Table.Body>
      {renderAppointments()}
    </Table.Body>
    </Table>
    </div>
  )
};

export default Appointments;