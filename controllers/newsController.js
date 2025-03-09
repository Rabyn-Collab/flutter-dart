import { mainNews } from "../apis.js";
import { instance } from "../index.js";





export const getNews = async (req, res) => {

  try {
    const response = await instance.get(mainNews);
    return res.status(200).json(response.data);
  } catch (err) {
    return res.status(400).json({ data: err.data || err.message });
  }
}
export const breakingNews = async (req, res) => {
  try {
    const response = await instance.get(breakingNews);
    return res.status(200).json(response.data);
  } catch (err) {
    return res.status(400).json({ data: err.data || err.message });
  }
}
export const latestNews = async (req, res) => {
  try {
    const response = await instance.get(latestNews);
    return res.status(200).json(response.data);
  } catch (err) {
    return res.status(400).json({ data: err.data || err.message });
  }
}
export const recommendNews = async (req, res) => {
  try {
    const response = await instance.get(recommendNews);
    return res.status(200).json(response.data);
  } catch (err) {
    return res.status(400).json({ data: err.data || err.message });
  }
}