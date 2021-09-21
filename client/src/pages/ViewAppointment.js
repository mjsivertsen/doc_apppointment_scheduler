import React from "react";
import {  Card  } from "semantic-ui-react";
import useAxiosOnMount from "../components/useAxiosOnMount";
import SimpleLoader from "../components/SimpleLoader";
import SimpleError from "../components/SimpleError";

const ViewAppointment = (props) => {
const { data: appointment, loading, error } = useAxiosOnMount(`/api/appointments/${props.match.params.id}`)

  const renderAppointment = () => {
    if (loading) return <SimpleLoader />
    if (error)
      return (
        <SimpleError
        header={"Well that didn't work."}
        error={error} />
      )
      return (
        <div key={appointment.id}>
        <Card>
        <Card.Content>
          <Card.Header>APPOINTMENT</Card.Header>
          {/* <Card.Meta>{appointment.doctor.address}</Card.Meta>
          <Card.Meta>{appointment.doctor.phone}</Card.Meta>
          <Card.Description>{`Appointment scheduled with ${appointment.doctor.name} for and ${appointment.patient.name} for ${appointment.datetime}`}</Card.Description> */}
          </Card.Content>
          <Card.Content extra>
          <Card.Meta> Please arrive at least fifteen seconds before your appointment time. </Card.Meta> 
          </Card.Content>
        </Card>
        </div>
      )}

  return (
    <>
    {renderAppointment()}
    </>
  )
  }

  export default ViewAppointment