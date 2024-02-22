package db;

/**
 * Represents a community member
 */
public class CommunityMember {
    public int user_id;
    public String startDate;
    public String distance;
    public String status;

    public CommunityMember(int user_id, String startDate, String distance, String status) {
        this.user_id = user_id;
        this.startDate = startDate;
        this.distance = distance;
        this.status = status;
    }

    public String toString() {
        return "User ID: " + user_id + "\nStart Date: " + startDate + "\nDistance: " + distance + "\nStatus: " + status;
    }
}
