import { breakingNews, latestNews, mainNews, recommendedNews } from "../apis.js";
import { instance } from "../index.js";





export const getNews = async (req, res) => {

  try {
    const response = await instance.get(mainNews);
    return res.status(200).json(response.data);
  } catch (err) {
    return res.status(400).json({ data: err.data || err.message });
  }
}
export const getBreakingNews = async (req, res) => {
  try {
    const response = await instance.get(breakingNews);
    return res.status(200).json(response.data);
  } catch (err) {
    return res.status(400).json({ data: err.data || err.message });
  }
}
export const getLatestNews = async (req, res) => {
  try {
    const response = await instance.get(latestNews);
    return res.status(200).json(response.data);
  } catch (err) {
    return res.status(400).json({ data: err.data || err.message });
  }
}
export const getrecommendNews = async (req, res) => {
  try {
    const response = await instance.get(recommendedNews);
    return res.status(200).json(response.data);
  } catch (err) {
    return res.status(400).json({ data: err.data || err.message });
  }
}

export const getNewsDetail = async (req, res) => {
  const { id } = req.params;
  try {
    const response = await instance.get(`${mainNews}${id}/`);
    return res.status(200).json(response.data);
  } catch (err) {
    return res.status(400).json({ data: err.data || err.message });
  }
}