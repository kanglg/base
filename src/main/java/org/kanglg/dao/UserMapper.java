package org.kanglg.dao;

import org.kanglg.common.MyBatisRepository;
import org.kanglg.model.User;
@MyBatisRepository
public interface UserMapper {
    int deleteByPrimaryKey(String userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}
