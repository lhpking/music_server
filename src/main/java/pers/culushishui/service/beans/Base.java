package pers.culushishui.service.beans;

public interface Base<T> {
    /**
     * 保存一条完整的数据一条数据
     *
     * @param t
     * @param <T>
     * @return
     */
     abstract  <T> Integer save(T t);

}
