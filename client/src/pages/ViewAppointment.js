import React from "react";
import { Link } from "react-router-dom";
import { Button, Card, Image } from "semantic-ui-react";

const ViewAppointment = (props) => {
    return (
      <div key={a.id}>
      <Card>
      <CardContent>
        <CardHeader>{`Appointment with ${a.doctor.name}`}</CardHeader>
        <Card.Meta>{a.doctor.address}</Card.Meta>
        <Card.Meta>{a.doctor.phone}</Card.Meta>
        <Card.Description>{`${a.patient.name}, you have an appointment scheduled with ${a.doctor.name} for ${a.datetime}`}</Card.Description>
        </CardContent>
        <CardContent extra>
        <Card.Meta> Please arrive at least fifteen seconds before your appointment time. </Card.Meta> 
          <Button> View Appointment </Button>
        </CardContent>
      </Card>
      </div>
    )}

  export default ViewAppointment