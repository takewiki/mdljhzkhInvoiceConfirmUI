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
#' ManagerConfirmUI()
ManagerConfirmUI <- function(tabTitle ='采购经理确认',
                               colTitles =c('操作区域','操作区域','显示区域'),
                               widthRates =c(6,6,12),
                               func_left = ManagerConfirmUI_left,
                               func_right =ManagerConfirmUI_right,
                               func_bottom = ManagerConfirmUI_bottom
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
#' ManagerConfirmUI_left()
ManagerConfirmUI_left <- function() {


  res <- tagList(


    shiny::actionButton(inputId = 'btn_ManagerConfirm_view',label = '查询对账单'),

    tsui::mdl_download_button(id = 'dl_ManagerConfirm',label = '下载查询记录到EXCEL'),

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' ManagerConfirmUI_bottom()
ManagerConfirmUI_right <- function() {
  res <- tagList(

    tsui::mdl_text2(id = 'text_ManagerConfirm_FBillNO',label ='输入对账单号' ,value ='202511060001' ),
    shiny::actionButton(inputId = 'btn_ManagerConfirm_confirm',label = '整单确认并申请')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' ManagerConfirmUI_bottom()
ManagerConfirmUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'ManagerConfirm_resultView',label ='结果显示' ))

  )
  return(res)

}
