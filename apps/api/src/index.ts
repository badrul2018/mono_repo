import express, { Request, Response } from 'express';

const app = express();

app.get('/', (_: Request, res: Response) => {
  res.send('API running!');
});

app.listen(3001, () => console.log('http://localhost:3001'));
