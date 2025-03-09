import express from "express";
import { getBreakingNews, getLatestNews, getNews, getNewsDetail, getrecommendNews } from "../controllers/newsController.js";

const router = express.Router();


router.route('/').get(getNews);
router.route('/breaking-news').get(getBreakingNews);
router.route('/news-recommendations').get(getrecommendNews);
router.route('/latest-update-news').get(getLatestNews);
router.route('/:id').get(getNewsDetail);


export default router;
