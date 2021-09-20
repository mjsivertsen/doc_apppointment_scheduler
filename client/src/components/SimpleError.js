import React from 'react'
import { Message } from 'semantic-ui-react'

const SimpleError = ({header, error}) => (
  <Message negative>
    <Message.Header>{header}</Message.Header>
    <code>{JSON.stringify(error)}</code>
  </Message>
)

export default SimpleError