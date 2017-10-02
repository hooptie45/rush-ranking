class Person < ActiveRecord::Base
  has_many :memberships 
  has_many :organizations, through: :memberships 
  belongs_to :primary_membership, :foreign_key => :primary_membership_id,
                                    :class_name => Membership
  
  def vote_for(person)
    primary_membership.organization.people << person
    m = Membership.last
    Vote.new(membership: m)
  end
end
