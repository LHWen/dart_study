/// 枚举 enum
void main() {

  var currentSeason = Season.autumn;

  switch (currentSeason) {
    case Season.spring:{
      print('spring');
      break;
    }
    case Season.summer:{
      print('summer');
      break;
    }
    case Season.autumn:{
      print('autumn');
      break;
    }
    case Season.winter:{
      print('winter');
      break;
    }
  }
}

/// 枚举特性 index属性从0开始，依次递增，不能指定初始值（即spring=1000，这种写法）
enum Season {
  spring,
  summer,
  autumn,
  winter
}