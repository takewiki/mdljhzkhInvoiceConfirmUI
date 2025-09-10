#' 开票申请任务生成生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' InvoiceApplyUI()
InvoiceApplyUI <- function(tabTitle ='开票申请',
                           colTitles =c('操作区域','操作区域','显示区域'),
                           widthRates =c(6,6,12),
                           func_left = InvoiceApplyUI_left,
                           func_right =InvoiceApplyUI_right,
                           func_bottom = InvoiceApplyUI_bottom
) {

  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)

}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' InvoiceApplyUI_left()
InvoiceApplyUI_left <- function() {


  res <- tagList(
    tsui::mdl_text2(id = 'text_InvoiceApply_FBillNO',label ='输入对账单号' ,value ='202508280001' ),

    shiny::actionButton(inputId = 'btn_InvoiceApply_apply',label = '开票申请'),

    shiny::actionButton(inputId = 'btn_InvoiceApply_query',label = '开票查询'),
  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' InvoiceApplyUI_bottom()
InvoiceApplyUI_right <- function() {
  res <- tagList(



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' InvoiceApplyUI_bottom()
InvoiceApplyUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'InvoiceApply_resultView',label ='结果显示' ))

  )
  return(res)

}
