import {
  Http
}
from '../utils/http.js'
import {
  Paging
} from '../utils/paging.js'
class BillModel {

  /** 获取统计金额 */
  static async getBillAmount(recordTime) {
    return await Http.request({
      url: "bill/total_amount",
      method: "GET",
      data: {
        recordTime
      }
    })
  }

    /** 获取收入分类 */
    static async getIncomeCategoryList() {
      return await Http.request({
        url: "category/list/income",
        method: "POST"
       
      })
    }

      /** 获取支付分类 */
  static async getConsumeCategoryList() {
    return await Http.request({
      url: "category/list/consume",
      method: "POST"
      
    })
  }

  /**
   * 加载分页
   */
  static getBillPaging(date) {
    return new Paging({
      url: "bill/all?recordTime=" + date
    })
  }

  /**
   * 删除账单
   */
  static async remove(id) {
    return await Http.request({
      url: "bill/remove",
      method: "POST",
      data: {
        id
      }
    })
  }

  /**
   * 添加记录
   */
  static async saveRecord(data) {
    return await Http.request({
      url: "bill/save",
      method: "POST",
      data
    })
  }

  /**
   * 添加记录
   */
  static async export () {
    return await Http.request({
      url: "bill/export",
      method: "POST",
    })
  }

}

export {
  BillModel
}