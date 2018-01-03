#
# DB Seed file
#


Employee.create(
  type: 'Employee',
  email: 'e@e.e',
  password: 'password',
  password_confirmation: 'password',
  name: 'Fake Person',
  address: '123 Fake St.',
  phone_number: '123-456-7890',
  availability: 'Weeknights after 6pm',
)
  
Client.create(
  type: 'Client',
  email: 'c@c.c',
  password: 'password',
  password_confirmation: 'password',
  name: 'Fake Client',
  address: '789 Something Drive',
  phone_number: '999-111-2222',
)

Admin.create(
  type: 'Admin',
  email: 'a@a.a',
  password: 'password',
  password_confirmation: 'password',
  name: 'Admin',
)

JobRequest.create(
  client_id: 2,
  address: '456 Sample Ave.',
  possible_times: '4pm Saturday',
  work_description: 'Clean my kitchen please',
  quantity_hours: 1,
  interview_requested: false,
)

JobRequest.create(
  client_id: 2,
  address: '12321 Oak St.',
  possible_times: '7pm Mondays',
  work_description: 'Need my bathroom cleaned',
  quantity_hours: 4.5,
  interview_requested: true,
  possible_interview_times: '3:45pm on Sunday',
  interview_notes: 'Meet me at the door on right side of house',
)

Job.create(
  job_request_id: 1,
  employee_id: 1,
  confirmed_time: '09/11/18 12:30',
  time_work_started: '09/11/18 12:31',
  admin_notes: 'Do a deep cleaning this time',
)

Job.create(
  job_request_id: 2,
  employee_id: 1,
  confirmed_time: '09/11/18 12:30',
  time_work_started: '09/11/18 12:31',
  time_work_completed: '09/11/18 14:32',
  is_paid: true,
  admin_notes: "Don't forget the dishes",
  employee_notes: 'Bathroom was really dirty',
)

Interview.create(
  job_request_id: 2,
  time: '3:45 Sunday',
  address: '889 Granville St.',
  notes: 'Meet on right side of house.',
)