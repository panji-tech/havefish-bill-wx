import {
  RecordModel
} from '../../models/record.js'

import {
  formatTime
} from '../../utils/utils.js'
const recordModel = new RecordModel();
Page({

  /**
   * 页面的初始数据
   */
  data: {
    date: "2019-09",
    show_loading: true,
    show_popup: false,
    currentDate: new Date().getTime(),
    maxDate: new Date().getTime(),
    showDate: formatTime(new Date(), "yyyy-MM")
  },

  onGoTally() {
    wx.redirectTo({
      url: '/pages/tally/tally',
    })
  },

  onSelectDate(event) {
    console.log(event)
    this.setData({
      show_popup: true
    })
  },
  onConfirm(event) {
    this.setData({
      currentDate: new Date(event.detail).getTime(),
      showDate: formatTime(new Date(event.detail), "yyyy-MM"),
      show_popup: false
    })
    this._getRecordList(this.data.showDate)
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this._getRecordList(this.data.showDate)
  },

  async _getRecordList(date) {
    let res = await recordModel.getRecordList(date);
    console.log(res)
    // this.setData({
    //   dataList: promise.data,
    //   show_loading: false
    // })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})