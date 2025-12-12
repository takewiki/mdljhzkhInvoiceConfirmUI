#' 采购经理确认任务生成生成器界面
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
#' PurchaserConfirmUI()
PurchaserConfirmUI <- function(tabTitle ='采购员确认',
                             colTitles =c('操作区域','操作区域','显示区域'),
                             widthRates =c(6,6,12),
                             func_left = PurchaserConfirmUI_left,
                             func_right =PurchaserConfirmUI_right,
                             func_bottom = PurchaserConfirmUI_bottom
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
#' PurchaserConfirmUI_left()
PurchaserConfirmUI_left <- function() {


  res <- tagList(
    #tsui::mdl_text2(id = 'text_PurchaserConfirm_FBillNO',label ='输入对账单号' ,value ='202508280001' ),
    #查询对账单最新信息

    shiny::actionButton(inputId = 'btn_PurchaserConfirm_view',label = '查询'),

    tsui::mdl_download_button(id = 'dl_PurchaserConfirm',label = '下载查询记录到EXCEL'),

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' PurchaserConfirmUI_bottom()
PurchaserConfirmUI_right <- function() {
  res <- tagList(

    tsui::mdl_file(id = 'text_PurchaserConfirm_checknote',label ='上传文件' ),


    shiny::actionButton(inputId = 'btn_PurchaserConfirm_checknote_update',label = '更新对账单结果')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' PurchaserConfirmUI_bottom()
PurchaserConfirmUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'PurchaserConfirm_resultView',label ='结果显示' ))

  )
  return(res)

}
