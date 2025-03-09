import express from 'express';
import userRoutes from './routes/userRoutes.js';
import mongoose from 'mongoose';
import newsRoutes from './routes/newsRoutes.js';
import axios from 'axios';

const app = express();

export const instance = axios.create({
  headers: {
    Authorization: 'token d8058afd4d72d56b1cd87497e0c0f8aabc0998b0'
  }
})

mongoose.connect('mongodb+srv://rabyn900:moles900@cluster0.ikwdezp.mongodb.net/News').then((val) => {
  app.listen(5000, () => {
    console.log('Database connected and listening');
  });
}).catch((err) => {
  console.log(err);
});

app.use(express.json());


app.use(express.static('uploads'));
app.get('/', (req, res) => {
  return res.status(200).json({
    message: 'server is running'
  });
});

app.use('/api/users', userRoutes);
app.use('/api/news', newsRoutes);





