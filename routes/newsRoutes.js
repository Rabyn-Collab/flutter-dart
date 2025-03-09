import express from "express";
import { breakingNews, getNews, latestNews, recommendNews } from "../controllers/newsController.js";

const router = express.Router();


router.route('/').get(getNews);
router.route('/breaking-news').get(breakingNews);
router.route('/news-recommendations').get(recommendNews);
router.route('/latest-update-news').get(latestNews);


export default router;
