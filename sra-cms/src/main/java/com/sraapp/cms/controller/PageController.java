package com.sraapp.cms.controller;

import com.sraapp.cms.entity.CmsArticle;
import com.sraapp.cms.service.IArticleService;
import com.sraapp.cms.service.ICommentService;
import com.sraapp.cms.vo.ArticleVo;
import com.sraapp.cms.vo.CommentVo;
import com.sraapp.cms.vo.TagVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author CoCoTea
 */
@RequestMapping("/cmsPage")
@Controller
public class PageController {
    @Resource
    private IArticleService articleService;
    @Resource
    private ICommentService commentService;

    @GetMapping("/index")
    public String index(ModelMap modelMap) {
        // 获取文章列表（时间倒叙、评论数最多）
        List<ArticleVo> articleServiceByCommentNumDesc = articleService.findByCommentNumDesc();
        List<ArticleVo> articleServiceByTimeDesc = articleService.findByTimeDesc();
        // 归档列表
        List<ArticleVo> articleServiceByArchiveList = articleService.findByArchiveList();
        // 热门评论
        List<CommentVo> commentVoList = commentService.findHotComment();
        // 获取标签列表
        List<TagVo> tagVoList = articleService.findHotTagList();
        modelMap.addAttribute("articleServiceByCommentNumDesc", articleServiceByCommentNumDesc);
        modelMap.addAttribute("articleServiceByTimeDesc", articleServiceByTimeDesc);
        modelMap.addAttribute("articleServiceByArchiveList", articleServiceByArchiveList);
        modelMap.addAttribute("commentVoList", commentVoList);
        modelMap.addAttribute("tagVoList", tagVoList);
        return "index";
    }

    @GetMapping("/detail/{articleId}")
    public String detail(@PathVariable("articleId") String articleId, ModelMap modelMap) {
        CmsArticle article = articleService.detail(articleId);
        modelMap.addAttribute("article", article);
        return "detail";
    }
}