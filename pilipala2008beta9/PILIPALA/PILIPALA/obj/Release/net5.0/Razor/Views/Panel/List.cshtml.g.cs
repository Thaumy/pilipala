#pragma checksum "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "3f3e42eb2c9e6e610f17c01d11f49911102dcefe"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Panel_List), @"mvc.1.0.view", @"/Views/Panel/List.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\_ViewImports.cshtml"
using PILIPALA;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\_ViewImports.cshtml"
using PILIPALA.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 7 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
using PILIPALA.system.Utils;

#line default
#line hidden
#nullable disable
#nullable restore
#line 8 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
using WaterLibrary.pilipala.Entity;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"3f3e42eb2c9e6e610f17c01d11f49911102dcefe", @"/Views/Panel/List.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"0e60be9c90af2170990e47eff766018c8e075941", @"/Views/_ViewImports.cshtml")]
    public class Views_Panel_List : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 2 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
  
    ViewBag.Title = "List";
    Layout = ViewBag.Layout;

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
            WriteLiteral("\r\n<!-- 置顶文章输出 -->\r\n");
#nullable restore
#line 11 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
 foreach (Post Post in ViewBag.置顶文章)
{
    if (Post.Type == "")
    {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <div class=\"Card M bSha bRds\">\r\n\r\n            <div");
            BeginWriteAttribute("onclick", " onclick=\"", 290, "\"", 327, 3);
            WriteAttributeValue("", 300, "up();showPost(", 300, 14, true);
#nullable restore
#line 17 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
WriteAttributeValue("", 314, Post.PostID, 314, 12, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 326, ")", 326, 1, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"contain cur\">\r\n                <!-- 前置样式 -->\r\n                ");
#nullable restore
#line 19 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
           Write(Html.Raw(Post.Cover));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                <div class=\"Title\">");
#nullable restore
#line 20 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
                              Write(Post.Title);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                <div class=\"Summary\">");
#nullable restore
#line 21 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
                                Write(Post.TrySummary(() => Post.TextContent(80)));

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n            </div>\r\n\r\n            <div class=\"AtBox bRds-b\">\r\n                <div class=\"Date\">");
#nullable restore
#line 25 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
                             Write(Formatter.CN_TimeSummary(Post.CT, x => Convert.ToString(Post.CT.Year) + "-" + Post.CT.Month + "-" + Post.CT.Day));

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                <div class=\"UVCount\">");
#nullable restore
#line 26 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
                                Write(Post.UVCount);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                <div class=\"CommentCount\">");
#nullable restore
#line 27 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
                                     Write(Post.PropertyContainer["CommentCount"]);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                <div class=\"StarCount\">");
#nullable restore
#line 28 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
                                  Write(Post.StarCount);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n            </div>\r\n\r\n        </div>\r\n");
#nullable restore
#line 32 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
    }
    else if (Post.Type == "note")
    {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <div class=\"Card M bSha bRds\">\r\n            <div");
            BeginWriteAttribute("onclick", " onclick=\"", 1133, "\"", 1170, 3);
            WriteAttributeValue("", 1143, "up();showPost(", 1143, 14, true);
#nullable restore
#line 36 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
WriteAttributeValue("", 1157, Post.PostID, 1157, 12, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 1169, ")", 1169, 1, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"contain cur bRds\">\r\n                <!-- 前置样式 -->\r\n                ");
#nullable restore
#line 38 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
           Write(Html.Raw(Post.Cover));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n\r\n                <div class=\"NoteContent bRds markdown-body\">\r\n                    ");
#nullable restore
#line 41 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
               Write(Html.Raw(Post.HtmlContent()));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                </div>\r\n            </div>\r\n        </div>\r\n");
#nullable restore
#line 45 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
    }
}

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n\r\n\r\n<!-- 其他文章输出 -->\r\n");
#nullable restore
#line 51 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
 foreach (Post Post in ViewBag.其他文章)
{
    if (Post.Type == "")
    {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <div class=\"Card M bSha bRds\">\r\n\r\n            <div");
            BeginWriteAttribute("onclick", " onclick=\"", 1609, "\"", 1646, 3);
            WriteAttributeValue("", 1619, "up();showPost(", 1619, 14, true);
#nullable restore
#line 57 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
WriteAttributeValue("", 1633, Post.PostID, 1633, 12, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 1645, ")", 1645, 1, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"contain cur\">\r\n                <!-- 前置样式 -->\r\n                ");
#nullable restore
#line 59 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
           Write(Html.Raw(Post.Cover));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                <div class=\"Title\">");
#nullable restore
#line 60 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
                              Write(Post.Title);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                <div class=\"Summary\">");
#nullable restore
#line 61 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
                                Write(Post.TrySummary(() => Post.TextContent(80)));

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n            </div>\r\n\r\n            <div class=\"AtBox bRds-b\">\r\n                <div class=\"Date\">");
#nullable restore
#line 65 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
                             Write(Formatter.CN_TimeSummary(Post.CT, x => Convert.ToString(Post.CT.Year) + "-" + Post.CT.Month + "-" + Post.CT.Day));

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                <div class=\"UVCount\">");
#nullable restore
#line 66 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
                                Write(Post.UVCount);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                <div class=\"CommentCount\">");
#nullable restore
#line 67 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
                                     Write(Post.PropertyContainer["CommentCount"]);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                <div class=\"StarCount\">");
#nullable restore
#line 68 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
                                  Write(Post.StarCount);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n            </div>\r\n        </div>\r\n");
#nullable restore
#line 71 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
    }
    else if (Post.Type == "note")
    {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <div class=\"Card M bSha bRds\">\r\n            <div class=\"contain cur bRds\"");
            BeginWriteAttribute("onclick", " onclick=\"", 2475, "\"", 2512, 3);
            WriteAttributeValue("", 2485, "up();showPost(", 2485, 14, true);
#nullable restore
#line 75 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
WriteAttributeValue("", 2499, Post.PostID, 2499, 12, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 2511, ")", 2511, 1, true);
            EndWriteAttribute();
            WriteLiteral(">\r\n                <!-- 前置样式 -->\r\n                ");
#nullable restore
#line 77 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
           Write(Html.Raw(Post.Cover));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                <div class=\"NoteContent bRds markdown-body\">\r\n                    ");
#nullable restore
#line 79 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
               Write(Html.Raw(Post.HtmlContent()));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                </div>\r\n            </div>\r\n        </div>\r\n");
#nullable restore
#line 83 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Panel\List.cshtml"
    }
}

#line default
#line hidden
#nullable disable
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591